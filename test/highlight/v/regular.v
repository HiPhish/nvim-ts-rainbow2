module main

import term { colorize }

struct Thing {
	name   string
	locked []string
}

enum ReleaseSource {
	@none
	archive
}

type ThingType = Thing | string

const (
	a = 'a'
	b = 'b'
)

fn main() {
	run()
}

fn run() {
	res_things := get_things()
	mut seen := map[string]bool{}
	mut things := []string{}

	outer: for t in res_things {
		s := match t {
			string {
				t
			}
			Thing {
				for l in t.locked {
					if false {
						eprintln(l)
						break outer
					}
				}
				t.name
			}
		}
		if !seen[s] {
			things << s
		}
	}

	println(colorize(term.bold, 'THINGS ${things}'))
}

fn get_things() []ThingType {
	t := Thing{
		name: 'Mr. Foo'
	}
	mut res := []ThingType{}
	res << a
	res << t

	return res
}
