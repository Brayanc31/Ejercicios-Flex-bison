# Flex & Bison - Ejercicios del Capítulo 1

Este repositorio contiene los ejemplos y ejercicios resueltos del **Capítulo 1**


##  Compilar y Ejecutar

### Para ejemplos solo con Flex (ejemplo1,2,3,4):
```bash
cd ejemplo1
flex ejemplo1.l
gcc lex.yy.c -lfl -o ejemplo1
./ejemplo1
```

### Para ejemplos con Flex + Bison (ejemplo5 y ejercicios 1,2,3):
```bash
cd ejemplo5
bison -d ejemplo1-5.y
flex ejemplo5.l
gcc lex.yy.c ejemplo1-5.tab.c -o ejemplo5
./ejemplo5
```

### Para el Ejercicio 6 (C puro):
```bash
cd Ejercicio6
gcc ejercicio6.c -o ejercicio6
./ejercicio6
```

##  Entrada de datos

Se debe ingresar datos manualmente y usar Ctrl+D para terminar

##  Requisitos

- **Flex** (probado con versión 2.6.4)
- **Bison** (probado con versión 3.8.2)
- **GCC** o cualquier compilador de C

Instalación en Ubuntu/Debian:
```bash
sudo apt-get install flex bison gcc
```

Instalación en macOS:
```bash
brew install flex bison
```


## 📖 Referencias

- Libro: ["Flex & Bison" - John Levine](https://www.oreilly.com/library/view/flex-bison/9780596805418/)
- [Documentación oficial de Flex](https://github.com/westes/flex)
- [Documentación oficial de Bison](https://www.gnu.org/software/bison/)
