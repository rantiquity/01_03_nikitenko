# загружаем нужные пакеты
library(languageR)
library(ggplot2)

# загружаем датасет
meta <- oldFrenchMeta

# допишите ваш код ниже
# постройте в ggplot столбиковую диаграмму (_bar), 
# показывающую распределение произведений по темам; цветом-заливкой закодируйте жанр; 
meta |> 
  # ваш код здесь
ggplot(aes(Genre, fill = Genre)) +
geom_bar()
  # уберите названия осей; добавьте заголовок "Old French Data"
  # ваш код здесь 
meta |> 
ggplot(aes(Genre, fill = Genre)) +
geom_bar() +
labs(
    title = "Old French Data",
    x = NULL,
    y = NULL
     )
  # поверните координатную ось; 
  # ваш код здесь
meta |> 
ggplot(aes(y = Genre, fill = Genre)) +
geom_bar() +
labs(
    title = "Old French Data",
    x = NULL,
    y = NULL
     )
  # поменяйте тему оформления на черно-белую (bw) 
meta |> 
ggplot(aes(y = Genre, fill = Genre)) +
geom_bar() +
labs(
    title = "Old French Data",
    x = NULL,
    y = NULL
     ) +
  theme_bw()

# !!!! сохраните график как объект в окружении под именем g
# !!!!вызов class(g) должен возвращать "gg"     "ggplot"
g <- meta |> 
ggplot(aes(y = Genre, fill = Genre)) +
geom_bar() +
labs(
    title = "Old French Data",
    x = NULL,
    y = NULL
     ) +
  theme_bw()
