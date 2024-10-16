# Memuat dataset
df <- read.csv("World Happiness Report 2024.csv")

# Memfilter data untuk Indonesia antara tahun 2006 dan 2023
indonesia_data <- df[df$Country.name == "Indonesia" & df$year >= 2006 & df$year <= 2023, ]

# Menyimpan grafik dalam format PNG
png("hasil_visualisasi_csv.png", width = 800, height = 600) # Atur ukuran gambar

# Mengatur plot dasar
plot(
    indonesia_data$year, indonesia_data$Life.Ladder,
    type = "o", col = "green", pch = 19, lwd = 2, cex = 1.5,
    xlab = "Year", ylab = "Value", main = "Life Ladder (Happiness) in Indonesia from 2006 to 2023",
    xlim = c(2006, 2023), ylim = c(4.8, 6), xaxt = "n", yaxt = "n", frame.plot = TRUE
)

# Menambahkan sumbu x dan y dengan skala yang diinginkan
axis(1, at = seq(2006, 2023, by = 1), las = 2) # Tahun di sumbu x
axis(2, at = seq(4.8, 6.0, by = 0.2), las = 2) # Nilai Life Ladder di sumbu y

# Menambahkan garis grid horizontal dan vertikal
abline(h = seq(4.8, 6.0, by = 0.2), v = seq(2006, 2023, by = 1), col = "gray", lty = "dashed")

# Menambahkan legenda di bagian atas
legend("topright", legend = "Life Ladder", col = "green", pch = 19, lty = 1, lwd = 2, bg = "white")

# Menutup perangkat grafis dan menyimpan file PNG
dev.off()
