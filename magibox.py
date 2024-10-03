import os
import time
import subprocess
import argparse
import tkinter as tk
from tkinter import ttk
from tkinter import PhotoImage
from ttkthemes import ThemedTk


parser = argparse.ArgumentParser(description='Magibox - Easy tool to assign your favorite shortcut combination in a button.')
parser.add_argument('--useconfig', type=str, help='Path to configuration file')
parser.add_argument('--version', action='version', version='Magibox 1.0')
args = parser.parse_args()

# Fungsi untuk memuat daftar jendela aktif
def get_active_windows():
    try:
        output = subprocess.check_output(['wmctrl', '-l']).decode('utf-8')
        windows = [line.split(None, 3)[-1] for line in output.strip().splitlines()]  # Ambil nama jendela
        return windows
    except subprocess.CalledProcessError:
        return []

# Fungsi untuk mengembalikan fokus ke aplikasi yang dipilih dan mengirim kombinasi tombol
def send_key_combination(key_combination):
    window_title = window_var.get()  # Ambil nama jendela dari combobox
    if window_title:
        os.system(f"wmctrl -a '{window_title}'")  # Kembalikan fokus ke aplikasi yang dipilih
        time.sleep(0.1)  # Tambahkan delay

        # Split multiple combinations using space as separator (e.g., 'ctrl+c ctrl+v')
        combinations = key_combination.split()

        # Send each combination via subprocess to avoid shell misinterpretation
        for combination in combinations:
            formatted_combination = combination.replace('_', '+')
            if formatted_combination:
                # Use subprocess to call xdotool directly
                subprocess.run(['xdotool', 'key', formatted_combination])
                time.sleep(0.1)  # Tambahkan jeda di antara kombinasi

# Membaca file konfigurasi
def load_config(filename):
    actions = {}
    try:
        with open(filename, 'r') as file:
            for line in file:
                line = line.strip()  # Menghapus spasi di awal dan akhir
                if line and not line.startswith('#'):  # Mengabaikan baris kosong dan komentar
                    try:
                        label, action = line.split('=')
                        actions[label.strip()] = action.strip()  # Menambahkan label dan aksi
                    except ValueError:
                        print(f"Invalid line in config: {line}")
    except FileNotFoundError:
        print(f"Config file {filename} not found.")
    return actions

# Fungsi untuk mengganti tema
def change_theme(selected_theme):
    root.set_theme(selected_theme)

# Membuat GUI
root = ThemedTk(theme="breeze")
root.title("Magibox")

# Set Always on Top via wmctrl
root.wm_attributes("-topmost", 1)
root.update_idletasks()  # Memastikan window sudah siap sebelum wmctrl
os.system(f"wmctrl -r 'Magibox' -b add,above")

icon = PhotoImage(file='images/magibox.png')
root.iconphoto(False, icon)


# Mengatur lebar tetap untuk jendela
fixed_width = 300
root.geometry(f"{fixed_width}x300")  # Atur tinggi sesuai kebutuhan

# Mengatur ukuran minimum dan maksimum jendela
root.minsize(120, 500)  # Set ukuran minimum
root.maxsize(150, 800)  # Set ukuran maksimum

# Memuat daftar jendela aktif
active_windows = get_active_windows()

# Variabel untuk menyimpan pilihan jendela
window_var = tk.StringVar(root)
window_var.set("Pilih Jendela")  # Set default value

# Dropdown untuk memilih jendela
window_menu = ttk.OptionMenu(root, window_var, *active_windows)
window_menu.config(width=15)  # Set lebar dropdown sama dengan tombol
window_menu.pack(pady=3, padx=2, fill='x')

# Memuat konfigurasi dari file
config_file = args.useconfig if args.useconfig else 'magi.conf'
config = load_config(config_file)

# Menampilkan nama file config yang digunakan
config_label = ttk.Label(root, text=f"[ ! ] {config_file}")
config_label.pack(pady=5, padx=10)

# Menambahkan tombol ke GUI berdasarkan konfigurasi
def create_button(label, action):
    button = ttk.Button(root, text=label, command=lambda: send_key_combination(action), width=15)
    button.pack(pady=3, padx=2, fill='x')  # Mengisi lebar secara horizontal

for label, action in config.items():
    create_button(label, action)

# Dropdown untuk memilih tema
available_themes = root.get_themes()  # Mendapatkan daftar tema
theme_var = tk.StringVar(root)
theme_var.set("breeze")  # Tema default

# theme_menu = ttk.OptionMenu(root, theme_var, *available_themes, command=change_theme)
# theme_menu.pack(pady=10)

# Menjalankan aplikasi
root.mainloop()
