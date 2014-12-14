var path = require('path');
module.exports = function (grunt) {
  grunt.initConfig({
      stylus: {
        compile: {
          files: {
            'css/main.css': ['stylus/main.styl']
          }
        }
      },
     express: {
        prod: {
          options: {
            port: 8080,
            bases: __dirname + '/public_prod',
            livereload: true,
            server: path.resolve('./dev')
          }
        },
        dev: {
          options: {
            port: 8080,
            bases: __dirname + '/public',
            livereload: true,
            server: path.resolve('./dev')
          }
        }
      },
      jekyll:{
        prod: {
          options: {
            config: '_config_prod.yml'
          }
        },
        dev: {
          options: {
            config: '_config.yml'
          }
        }
      },
      watch: {
        markdowns: {
          files: ['**/*.md'],
          tasks: ['jekyll']
        },
        stylus: {
          files: ['stylus/*.styl'],
          tasks: ['stylus', 'jekyll']
        },
        jekyll: {
          files: ['_config*', '_plugins/*', '_layouts/*', '_includes/*'],
          tasks: ['jekyll']
        }
      }
    });
    grunt.loadNpmTasks("grunt-contrib-watch");
    grunt.loadNpmTasks('grunt-jekyll');
    grunt.loadNpmTasks('grunt-express');
    grunt.loadNpmTasks("grunt-contrib-stylus");
    grunt.registerTask('dev', ['stylus', 'jekyll:dev', 'express:dev', 'watch']);
    grunt.registerTask('prod', ['stylus', 'jekyll:prod', 'express:prod', 'watch']);
    grunt.registerTask('default', ['prod']);
};
