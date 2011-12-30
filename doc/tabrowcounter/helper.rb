#!/usr/bin/env ruby

require 'thor'
require 'thor/actions'
require 'thor/group'

module Helper
  class Default < Thor 
    include Thor::Actions

    desc 'clean', 'Delete temp files'
    def clean
      run "rm -f *.aux *.log *.pdf"
    end

    desc 'view' , 'view both generated documents'
    def view 
      run "xdg-open tabrowcounter-example-longer.pdf"
      run "xdg-open tabrowcounter-example.pdf"
    end
  end

  class Build < Thor
    include Thor::Actions

    desc 'first' , 'Build first document'
    def first
      3.times do |round|
        say "Round: #{round}" 
        run "pdflatex -interaction batchmode tabrowcounter-example-longer.tex >& /dev/null"
      end
      say "Built after 3 rounds finished." 
    end

    desc 'second' , 'Build second document'
    def second
      4.times do |round|
        say "Round: #{round}" 
        run "pdflatex -interaction batchmode tabrowcounter-example-longer.tex >& /dev/null"
      end
      say "Built after 4 rounds finished." 
    end
  end

  Default.register(Build , 'build', 'build [document]', 'Build documents')
end

Helper::Default.start

