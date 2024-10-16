# Memuat library yang diperlukan
library(tibble)

# Data yang diberikan dalam bentuk tibble
data <- tibble(
    Year = 2006:2023,
    Value = c(
        8.84, 8.89, 8.93, 8.96, 9.01, 9.06, 9.11, 9.15, 9.18, 9.22,
        9.26, 9.30, 9.34, 9.38, 9.35, 9.38, 9.43, 9.46
    )
)

# Menghitung persentase
pct <- round(data$Value / sum(data$Value) * 100, 1)
labels <- paste(pct, "%") # Persentase

# Membuka device PNG untuk menyimpan gambar
png("hasil_piechart.png")

# Membuat Pie Chart
pie(data$Value,
    labels = NA, # Tidak menampilkan label persentase di dalam chart
    main = "Pie Chart: World Happiness (Indonesia) Data Visualization from 2006 to 2023",
    col = rainbow(length(data$Value)), radius = 0.9 # Mengurangi radius untuk memberikan lebih banyak ruang
)

# Menghitung posisi untuk menempatkan label persentase
pie_positions <- cumsum(data$Value) - 0.5 * data$Value # Posisi tengah untuk setiap potongan

# Menambahkan label persentase ke dalam potongan pie
text_positions_x <- cos(pi * (2 * pie_positions + data$Value / 2) / sum(data$Value)) * 0.7 # Jarak dari pusat
text_positions_y <- sin(pi * (2 * pie_positions + data$Value / 2) / sum(data$Value)) * 0.7

# Menambahkan label persentase ke dalam potongan pie
text(x = text_positions_x, y = text_positions_y, labels = labels, cex = 0.8, col = "black")

# Menghitung posisi untuk menempatkan label tahun di luar pie chart
year_positions_x <- cos(pi * (2 * pie_positions + data$Value / 2) / sum(data$Value)) * 1 # Tambahkan offset untuk jarak
year_positions_y <- sin(pi * (2 * pie_positions + data$Value / 2) / sum(data$Value)) * 1 # Tambahkan offset untuk jarak

# Menambahkan label tahun di luar potongan pie
text(x = year_positions_x, y = year_positions_y, labels = data$Year, cex = 0.8, col = "black")

# Menutup device untuk menyimpan gambar
dev.off()
