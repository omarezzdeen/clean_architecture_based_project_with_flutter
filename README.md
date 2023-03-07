# Clean Architecture Based Project With Flutter
#### I'm trying to emulate the clean architecture from the clean architecture book written by Robert Martin "Uncle Bob"
<pre>
core--
     |
     |__entity
             |__ /* classes pure dart code */
     |
     |__useCase
               |__lib
                     |__src
                           |__repository.dart 
     |
     |__repository
                 |__lib
                       |__src
                             |__mappers
                                       |__
                             |__models
                                      |__
                             |
                             |__repository_Imp.dart
                             |__data_source.dart
                             |__remote_data_source.dart
     |
     |__viewModel
                 |__lib
                     |__src
                           |__
     |
     |__remote
             |__lib
                   |__src
                         |__api
                               |__service.dart
                         |__response
                                   |__base_response.dart
                         |
                         |__remote_data_source_imp.dart
                         |__authInterceptor.dart
                         |__dio_factory.dart
     |
     |__local
             |__lib
                   |__src
                         |__app_configurator_imp
                         |__app_prefs.dart
     |
     |__ui
          |__lib
                |__src
                      |__screens
                                |--
                      |__utilities
                                 |__routes
                                          |__reoutes.dart
                                 |__themes
                                          |__color_manager.dart
                                          |__font_manager.dart
                                          |__style_manager.dart
                                          |__theme_manager.dart
                                 |__values
                                          |__string_manager.dart
                                          |__values_manage.dart
