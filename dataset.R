# Membaca file CSV menggunakan read.csv
df <- read.csv("World Happiness Report 2024.csv")

# Memfilter data untuk negara Indonesia dan tahun 2006-2023
data_indonesia <- df[
    df$Country.name == "Indonesia" & df$year >= 2006 & df$year <= 2023,
    c("year", "Life.Ladder")
]

# Menampilkan data yang sudah difilter
print(data_indonesia)
