package main
 
import (
	"flag"
	"fmt"
)
 
func greet(name string) string {
	return "Hello, " + name + "!"
}
 
func main() {
	name := flag.String("name", "World", "who to greet")
	flag.Parse()
	fmt.Println(greet(*name))
}