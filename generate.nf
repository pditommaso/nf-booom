

def imports = ''
def commands = ''

100.times {
  imports += "include { simpleTask as simpleTask$it } from './module.nf'\n"
  commands += "  simpleTask$it(0..params.times)\n"
}

file('main.nf').text = imports + "\nparams.times=100\nworkflow{\n$commands\n}\n"
