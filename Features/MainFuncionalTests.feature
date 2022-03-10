@Browser:Chrome
@Browser:Firefox
@Browser:Edge
Feature: Script execution speed test for Chrome, Firefox and Edge browsers - English language version
	Verification of the speed of execution of automated tests in NUnit, Selenium WebDriver 4.1, SpecFlow in C# for 3 browsers

Scenario Outline: Search products by keyword
	Given Go to page "https://helion.pl/"
	When Enter a keyword in the search box "<keyword>"
	And Click the search button
	Then User can see the book "<keyword>"

Examples:
	| keyword                                                                                             |
	| LEGO BOOST - wyzwalacz kreatywności. Jak zbudować 95 robotów o prostej konstrukcji                  |
	| Bezpieczeństwo sieci w Pythonie. Rozwiązywanie problemów za pomocą skryptów i bibliotek. Wydanie II |
	| Python 3. Projekty dla początkujących i pasjonatów                                                  |
	| Czysty kod. Podręcznik dobrego programisty                                                          |
	| Architektura Lean w projektach Agile                                                                |
	| Flutter i Dart 2 dla początkujących. Przewodnik dla twórców aplikacji mobilnych                     |
	| Algorytmy sztucznej inteligencji. Ilustrowany przewodnik                                            |
	| Skazany na sukces. Kariera w Data Science                                                           |
	| SQL w mgnieniu oka. Opanuj język zapytań w 10 minut dziennie. Wydanie V                             |
	| Uczenie głębokie i sztuczna inteligencja. Interaktywny przewodnik ilustrowany                       |

Scenario Outline: Add product to cart
	Given Go to page "<product_url>"
	When Click the button - Add to shopping cart
	Then User sees a book in the shopping cart "<keyword>"

Examples:
	| keyword                                                                                             | product_url                                                                                                                                                       |
	| LEGO BOOST - wyzwalacz kreatywności. Jak zbudować 95 robotów o prostej konstrukcji                  | https://helion.pl/ksiazki/lego-boost-wyzwalacz-kreatywnosci-jak-zbudowac-95-robotow-o-prostej-konstrukcji-yoshihito-isogawa,legobo.htm#format/d                   |
	| Bezpieczeństwo sieci w Pythonie. Rozwiązywanie problemów za pomocą skryptów i bibliotek. Wydanie II | https://helion.pl/ksiazki/bezpieczenstwo-sieci-w-pythonie-rozwiazywanie-problemow-za-pomoca-skryptow-i-bibliotek-wydanie-ii-jos-manuel-ortega,bezsp2.htm#format/d |
	| Python 3. Projekty dla początkujących i pasjonatów                                                  | https://helion.pl/ksiazki/python-3-projekty-dla-poczatkujacych-i-pasjonatow-adam-jurkiewicz,pytmie.htm#format/d                                                   |
	| Czysty kod. Podręcznik dobrego programisty                                                          | https://helion.pl/ksiazki/czysty-kod-podrecznik-dobrego-programisty-robert-c-martin,czykov.htm#format/d                                                           |
	| Architektura Lean w projektach Agile                                                                | https://helion.pl/ksiazki/architektura-lean-w-projektach-agile-james-o-coplien-gertrud-bjornvig,arlean.htm#format/d                                               |
	| Flutter i Dart 2 dla początkujących. Przewodnik dla twórców aplikacji mobilnych                     | https://helion.pl/ksiazki/flutter-i-dart-2-dla-poczatkujacych-przewodnik-dla-tworcow-aplikacji-mobilnych-alessandro-biessek,flutte.htm#format/d                   |
	| Algorytmy sztucznej inteligencji. Ilustrowany przewodnik                                            | https://helion.pl/ksiazki/algorytmy-sztucznej-inteligencji-ilustrowany-przewodnik-rishal-hurbans,algszt.htm#format/d                                              |
	| Skazany na sukces. Kariera w Data Science                                                           | https://helion.pl/ksiazki/skazany-na-sukces-kariera-w-data-science-jacqueline-nolis-emily-robinson,sksukd.htm#format/d                                            |
	| SQL w mgnieniu oka. Opanuj język zapytań w 10 minut dziennie. Wydanie V                             | https://helion.pl/ksiazki/sql-w-mgnieniu-oka-opanuj-jezyk-zapytan-w-10-minut-dziennie-wydanie-v-ben-forta,sqlok5.htm#format/d                                     |
	| Uczenie głębokie i sztuczna inteligencja. Interaktywny przewodnik ilustrowany                       | https://helion.pl/ksiazki/uczenie-glebokie-i-sztuczna-inteligencja-interaktywny-przewodnik-ilustrowany-jon-krohn-grant-beyleveld-agla-bassens,uczgsi.htm#format/d |

Scenario Outline: Add product to clipboard
	Given Go to page "<product_url>"
	When Click - To clipboard
	Then User can see the book in the clipboard "<keyword>"

Examples:
	| keyword                                                                                             | product_url                                                                                                                                                       |
	| LEGO BOOST - wyzwalacz kreatywności. Jak zbudować 95 robotów o prostej konstrukcji                  | https://helion.pl/ksiazki/lego-boost-wyzwalacz-kreatywnosci-jak-zbudowac-95-robotow-o-prostej-konstrukcji-yoshihito-isogawa,legobo.htm#format/d                   |
	| Bezpieczeństwo sieci w Pythonie. Rozwiązywanie problemów za pomocą skryptów i bibliotek. Wydanie II | https://helion.pl/ksiazki/bezpieczenstwo-sieci-w-pythonie-rozwiazywanie-problemow-za-pomoca-skryptow-i-bibliotek-wydanie-ii-jos-manuel-ortega,bezsp2.htm#format/d |
	| Python 3. Projekty dla początkujących i pasjonatów                                                  | https://helion.pl/ksiazki/python-3-projekty-dla-poczatkujacych-i-pasjonatow-adam-jurkiewicz,pytmie.htm#format/d                                                   |
	| Czysty kod. Podręcznik dobrego programisty                                                          | https://helion.pl/ksiazki/czysty-kod-podrecznik-dobrego-programisty-robert-c-martin,czykov.htm#format/d                                                           |
	| Architektura Lean w projektach Agile                                                                | https://helion.pl/ksiazki/architektura-lean-w-projektach-agile-james-o-coplien-gertrud-bjornvig,arlean.htm#format/d                                               |
	| Flutter i Dart 2 dla początkujących. Przewodnik dla twórców aplikacji mobilnych                     | https://helion.pl/ksiazki/flutter-i-dart-2-dla-poczatkujacych-przewodnik-dla-tworcow-aplikacji-mobilnych-alessandro-biessek,flutte.htm#format/d                   |
	| Algorytmy sztucznej inteligencji. Ilustrowany przewodnik                                            | https://helion.pl/ksiazki/algorytmy-sztucznej-inteligencji-ilustrowany-przewodnik-rishal-hurbans,algszt.htm#format/d                                              |
	| Skazany na sukces. Kariera w Data Science                                                           | https://helion.pl/ksiazki/skazany-na-sukces-kariera-w-data-science-jacqueline-nolis-emily-robinson,sksukd.htm#format/d                                            |
	| SQL w mgnieniu oka. Opanuj język zapytań w 10 minut dziennie. Wydanie V                             | https://helion.pl/ksiazki/sql-w-mgnieniu-oka-opanuj-jezyk-zapytan-w-10-minut-dziennie-wydanie-v-ben-forta,sqlok5.htm#format/d                                     |
	| Uczenie głębokie i sztuczna inteligencja. Interaktywny przewodnik ilustrowany                       | https://helion.pl/ksiazki/uczenie-glebokie-i-sztuczna-inteligencja-interaktywny-przewodnik-ilustrowany-jon-krohn-grant-beyleveld-agla-bassens,uczgsi.htm#format/d |

Scenario Outline: Search products by author
	Given Go to page "https://helion.pl/"
	When Enter a keyword in the search box "<author>"
	And Click the search button
	Then The user can see <quantity> author's books "<author>"

Examples:
	| author            | quantity |
	| Yoshihito Isogawa | 2        |
	| Gil Raviv         | 1        |
	| Felix Zumstein    | 2        |
	| Sandro Mancuso    | 1        |
	| Gunther Verheyen  | 2        |
	| Bartosz Szmit     | 4        |
	| Oleg Żero         | 3        |
	| Bartosz Bartczak  | 1        |
	| Ben Forta         | 5        |
	| Christopher Negus | 3        |

Scenario Outline: Filter by category
	Given Go to page "https://helion.pl/"
	When Click on the categories "<category>"
	Then The user can see the categories "<result>"

Examples:
	| category            | result              |
	| Podręczniki szkolne | Podręczniki szkolne |
	| Programowanie       | Programowanie       |
	| Technologie webowe  | Technologie webowe  |
	| Podstawy komputera  | podstawy komputera  |
	| Gry                 | Gry                 |
	| Hacking             | Hacking             |
	| Biznes IT           | biznes w branży IT  |
	| CAD/CAM             | CAD/CAM             |
	| Digital Lifestyle   | Digital Lifestyle   |
	| DTP                 | DTP                 |
