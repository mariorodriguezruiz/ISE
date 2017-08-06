
db.ejercicio5.drop()

var c = 0;

while (c<10000){ c=c+1; db.ejercicio5.insert( { id: "ISE",numero: c} )}
