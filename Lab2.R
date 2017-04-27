# 1. Створить вектор v із 100 елементів командою v <- rnorm(100).
# Для цього вектору виведіть: 10-й елемент; елементи з 10-го по 20-й включно; 
# 10 елементів починаючи з 20-го; елементи більше 0.
v <- rnorm(100)
print(v[10])
print(v[10:20])
print(v[20:29])
print(v[which(v > 0)])

# 2. Створіть фрейм (data frame) y командою 
# y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE)). 
# Для цього data frame виведіть: останні 10 строк; строки з 10 по 20 включно; 
# 10-й елемент стовпця b; повністю стовпець cc, при цьому використайте ім’я стовпця.
y <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE))
print(tail(y, 10))
print(tail(head(y, 20), 11))
print(y$b[[10]])
print(y$cc)

# 3. Створіть вектор z з елементами 1, 2, 3, NA, 4, NA, 5, NA. 
# Для цього вектору: виведіть всі елементи, які не NA; 
# підрахуйте середнє значення всіх елементів цього вектору без NA значень та з NA значеннями.
z <- c(1, 2, 3, NA, 4, NA, 5, NA)
idx <- which(z %in% NA)
z2 = z[-idx]
print(z2)
average_z = mean(z)
average_z2 = mean(z2)

print(average_z)
# output NA
print(average_z2)
# output 3