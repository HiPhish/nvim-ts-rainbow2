import term { colorize }

struct Thing {
	name   string
	source ReleaseSource
	locked []LockType
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

fn update() ! {
	mut seen := map[string]bool{}
	mut mp := map[string]{}
	mut things := []ThingType{}

	outer: for k, v in glob_things {
		match k {
			string {
				things << k
			}
			Thing {
				for l in v.locked {
					name := if l is Locked { l.name } else { l as string }
					if v.name == name {
						continue outer
					}
				}
				things << k
			}
		}
	}
	println(colorize(term.bold, 'DO UPDATE'))
}
