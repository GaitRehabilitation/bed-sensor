# Mini Data Capture

## Programming

### Vagrant

vagrant is tool for managing virtual machines. This setup isolates the building and flashing of the board from the build system in a consistent enviroment. 

#### Building

- nrf52840_pca10056
- nrf52840_smup

```
west build --board <board>
```

#### Flashing

vagrant is provisioned with jlink.  

```
west flash --runner jlink
```

## Maintainers

The current maintainers of this repository are:

* Michael Pollind <polli104@mail.chapman.edu>


# License

```
/**
* Copyright 2018 GaitRehabilitation
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

```
