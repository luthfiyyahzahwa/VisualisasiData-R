# Memuat library yang diperlukan
library(ggplot2)

# Data yang diberikan
x <- c(
    2006:2023
)
y <- c(
    0.71, 0.69, 0.67,
    0.77, 0.72, 0.75,
    0.76, 0.78, 0.76,
    0.80, 0.75, 0.78,
    0.80, 0.80, 0.74,
    0.80, 0.82, 0.81
)

# Membuat data frame
data <- data.frame(Year = x, Value = y)

# Membuat plot dengan marker '*' dan garis putus-putus '--'
plot <- ggplot(data, aes(x = Year, y = Value)) +
    geom_line(color = "#FFB200", linetype = "dashed") + # Garis putus-putus
    geom_point(shape = 8, size = 3, color = "#FFB200") + # Marker '*'
    labs(
        x = "Year", y = "Value",
        title = "World Happiness (Indonesia) Data Visualization from 2006 to 2023"
    ) +
    scale_x_continuous(breaks = seq(2006, 2023, by = 1)) + # Menampilkan semua tahun
    theme(
        axis.title.x = element_text(color = "darkred"),
        axis.title.y = element_text(color = "darkred"),
        plot.title = element_text(face = "bold", color = "#8D493A"),
        axis.text.x = element_text(angle = 45, hjust = 1)
    ) + # Memutar label sumbu X
    theme_minimal() + # Tema minimal
    theme(panel.grid.major = element_line(linetype = "dashed")) + # Mengatur grid
    geom_vline(xintercept = min(x) - 0.5, color = "black") + # Garis vertikal di tepi kiri
    geom_hline(yintercept = min(y) - 0.02, color = "black") # Garis horizontal di tepi bawah

# Menyimpan hasil sebagai gambar
ggsave("hasil_linechart.png", plot = plot)

# Menampilkan plot
print(plot)
