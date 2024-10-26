# Домашнее задание к лекции «Docker»
## Задание 1  
По аналогии с практикой из лекции создайте свой docker image с http сервером nginx. Замените страницу приветсвия Nginx на своё (измените текст приветствия на той же странице). 


<details><summary>Подсказки: </summary>  
В официальном образе nginx стандартный путь к статичным файлам `/usr/share/nginx/html`.  
</details>  

На проверку присылается GitHub репозиторий с Dockerfile и статичными файлами для него.    
  > Для пользовательского html можно использовать пример в [каталоге](html/) с ДЗ.
  
 
#### Создать Docker образ

```bash
docker build . -t task1_nginx
```


#### Запустить Ducker контейнер:

```bash
docker run --name nginx -d -p 8888:80 task1_nginx
```


#### Созданные образы

```bash
docker image ls
```



#### Запущенные контейнеры

```bash
docker ps
```


#### Проверка содержимого

```bash
curl localhost:8888/
```
