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

@JsName('google.maps.OverlayView')
abstract class _OverlayView implements JsInterface {
  factory _OverlayView() => null;

  void draw();
  dynamic /*GMap|StreetViewPanorama*/ get map => (ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .decode(_getMap());
  dynamic _getMap();
  MapPanes get panes => _getPanes();
  MapPanes _getPanes();
  MapCanvasProjection get projection => _getProjection();
  MapCanvasProjection _getProjection();
  void onAdd();
  void onRemove();
  set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap((ChainedCodec()
        ..add(JsInterfaceCodec<GMap>(
            (o) => GMap.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['Map'] as JsFunction)))
        ..add(JsInterfaceCodec<StreetViewPanorama>(
            (o) => StreetViewPanorama.created(o),
            (o) =>
                o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']
                    as JsFunction))))
      .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map);
}
