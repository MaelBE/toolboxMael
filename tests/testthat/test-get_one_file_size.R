# WARNING - Generated by {fusen} from dev/flat_get_one_file_size.Rmd: do not edit by hand # nolint: line_length_linter.

test_that("get_one_file_size works", {
  expect_true(inherits(get_one_file_size, "function"))
  
  expect_error(object = get_one_file_size(glue::glue("{system.file(package = 'toolboxMael')}/nyc_squirrels.csv")),
               regexp = "Votre fichier n'existe pas !!!")
  expect_equal(object = get_one_file_size(glue::glue("{system.file(package = 'toolboxMael')}/nyc_squirrels_sample.csv")),
               expected = data.frame(
                 nom_fichier = "nyc_squirrels_sample.csv",
                 taille = 54650
               ))
})
