### Proyecto_Bionf2020 

### Resumen

En el presente proyecto se aplicò la mètrica **"Cumulative variance explained by major principal components"** mencionada e implementada en McCartney‐Melstad *et al* (2019), con la finalidad de evaluar el efecto que tienen diferentes umbrales de agrupaciòn con relaciòn a la cantidad de loci considerados como ortòlogos o paràlogos dentro de nuestro set de secuencias. Para ello, se emplearon 39 secuencias de la lagartija de amplia distribuciòn *Gerrhonotus infernalis*, las cuales se obtuvieron con la tècnica de ddRADseq y se evaluaron con ipyrad. Por cada anàlisis (uno por umbral de agrupamiento) de ipyrad se obtuvo un archivo .vcf, los cuales se emplearon para calcular la varianza acumulada en cada umbral de agrupamiento.

### Discusión

Cuando no se cuenta con un genoma de referencia establecer homologìas es un gran reto, en especial en estudios genómicos como RADseq o ddRADseq, pues son susceptibles a una agrupación errónea de parálogos duplicados recientemente dentro de un solo loci. Por lo tanto es necesario contar con un parámetro o protocolo confiable que permita evaluar qué tan divergentes son dos secuencias que presenten alelos del mismo locus homólogo, y por otra parte no considerar estos homólogos verdaderos como loci parálogos. Este parámetro se conoce como **Clustering threshold** en las tuberías de pyrad/ipyrad.

Si el umbral de agrupamiento se establece muy bajo, las regiones parálogas se pueden agrupar dentro o entre muestras (pueden ser incorporadas erróneamente como ortólogos), y si se establece un umbral de agrupación demasiado elevado tiene el efecto contrario, pues los alelos de verdaderas variantes alélicas de los loci ortólogos pueden dividirse en alelos separados. Entonces, ¿Qué valor de umbral de agrupamiento se debe elegir?, no es una respuesta sencilla; sin embargo, se han propuesto métricas que nos ayudan a tomar esta decisión, una de estas métricas es la fracción de varianza explicada por los componentes principales de la variación genética (Mastretta-Yanes *et al*., 2015. Esta métrica se emplea principalmente en estudios de genética de poblaciones.

Con referencia a la métrica evaluada podemos decir que el aumento de la cantidad de datos más informativos/precisos disminuye el ruido en los patrones principales de diferenciación genética, lo que lleva a un aumento de varianza explicada por los primeros componentes principales. Sin embargo, cuando los verdaderos ortólogos están demasiado divididos, se produce una reducción en la divergencia de los grupos más diferentes, lo que lleva a una disminución en la varianza explicada en los componentes principales. Por lo tanto, ésta relación en los conjuntos de datos genéticos bajo diferentes umbrales de agrupación se investigó calculando la proporción de la varianza genética explicada para los primeros cinco componentes principales para cada umbral de agrupamiento (archivo VCF). Para demostrar los resultados del análisis graficó la varianza acumulativa explicada por los primeros cinco componentes principales para cada umbral de agrupamiento.

Como resultado se encontró que la varianza explicada fue mayor en el umbral de agrupamiento de **0.88**, mientras que disminuyó drásticamente en un umbral de agrupamiento de **0.96** y luego tuvo un ligero aumento en un umbral de **0.98** (**Figura 1**). En este sentido, considerando los resultados se podría pensar que el mejor umbral de agrupamiento para evaluar nuestros datos es 0.88; sin embargo, esta decisión no se puede basar unicamente en el análisis de una métrica sino que deben contemplarse más métricas, como las propuestas y recopiladas en McCartney-Melstad *et al* (2019).

Figura 1: 
![alt text](https://github.com/jdaniellt/Proyecto_Bionf2020/blob/master/Imagenes%20empleadas%20en%20discusi%C3%B2n/Imagenes%20empleadas%20en%20discusi%C3%B2n/Figura%201.png "Logo Title Text 1")


Extrañamente el umbral de agrupamiento óptimo estimado por la métrica implementada fue bajo (0.88) en comparación con otros estudios (0.94-0.96; McCartney-Melstad *et al* (2020), y el manual de ipyrad donde el umbral de agrupamiento óptimo se propone entre los 0.95-0.96. En este sentido descarté que se tratase de un error bioinformático, pues tambièn corrí los mismos scripts para los archivos de McCartney y Melstad *et al* (2020) y el resultado fue los idéntico a los que presentan en su artículo (ver **Figura 2**).

Figura 2: 
![alt text](https://github.com/jdaniellt/Proyecto_Bionf2020/blob/master/Imagenes%20empleadas%20en%20discusi%C3%B2n/Imagenes%20empleadas%20en%20discusi%C3%B2n/Figura%202.png "Logo Title Text 1")

Naturalmente los resultados propios (archivos vcf generados mediante mis secuencias) y los resultados obtenidos con los archivos de McCartney-Melstad *et al*., (2020) tenian que variar, pero la diferencia es dràstica como se comentò anteriormente. Probablemente una de las causas sean los valores establecidos para cada paràmetro en el archivo params.txt empleado para correr ipyrad. AL comparar  i archivo params.txt y el de el encontrè diferencias en los valores 


