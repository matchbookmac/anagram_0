# Anagram

## The method

The method `anagram?()` is defined for the array ckass. The method checks the array to see if any of the elements therin are anagrams of the first element of the array (element of index `0`). The method returns an array of the elements of the original array that are anagrams, it does not return the element that was the origin of the anagrams as part of this array.

## The site

The `/form` page accepts a root word, and a list of words provided by the user that will be checked against the root word to see if they are anagrams. Upon submit, the string of words is parsed into an array of elements, the root word is added as the first element of this array (index `0`), and the `anagram?()` method is called on that array. The results are displayed on the `\list` page.