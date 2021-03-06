// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps.src;

@anonymous
abstract class _MapTypeControlOptions implements JsInterface {
  factory _MapTypeControlOptions() => null;

  dynamic get _mapTypeIds => asJsObject(this)['mapTypeIds'];
  List<dynamic /*MapTypeId|String*/ > get mapTypeIds =>
      JsListCodec<dynamic /*MapTypeId|String*/ >(ChainedCodec()
            ..add(BiMapCodec<MapTypeId, dynamic>({
              MapTypeId.HYBRID: context['google']['maps']['MapTypeId']
                  ['HYBRID'],
              MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                  ['ROADMAP'],
              MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                  ['SATELLITE'],
              MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']
                  ['TERRAIN']
            }))
            ..add(IdentityCodec<String>()))
          .decode(_mapTypeIds as JsArray);
  set _mapTypeIds(dynamic mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = mapTypeIds;
  }

  set mapTypeIds(List<dynamic /*MapTypeId|String*/ > mapTypeIds) {
    _mapTypeIds = JsListCodec<dynamic /*MapTypeId|String*/ >(ChainedCodec()
          ..add(BiMapCodec<MapTypeId, dynamic>({
            MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
            MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']
                ['ROADMAP'],
            MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']
                ['SATELLITE'],
            MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
          }))
          ..add(IdentityCodec<String>()))
        .encode(mapTypeIds);
  }

  ControlPosition position;
  MapTypeControlStyle style;
}
