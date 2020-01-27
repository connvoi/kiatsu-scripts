---
layout: default
---

<div class="container mt-2">
<!-- Table with panel -->
<div class="card card-cascade narrower">

  <!--Card image-->
  <div class="view view-cascade  rgba-orange-strong narrower py-2 mx-4 mb-3 d-flex justify-content-between align-items-center">
    <div></div>

    <a href="" class="white-text mx-3 px-2">###cityname###の気圧</a>

    <div></div>
  </div>
  <!--/Card image-->

  <div class="px-4">

    <div class="table-wrapper"> <!--Table-->
      <table class="table table-hover mb-0">

        <!--Table head-->
        <thead>
          <tr>
            <th class="th-lg text-center">
              日付
            </th>
            <th class="th-lg text-center">
              気圧
            </th>
            <th class="th-lg text-center">
              天気/気温
            </th>
          </tr>
        </thead>
        <!--Table head-->

        <!--Table body-->
        <tbody>
        {% for item in site.data.city.###cityid### %}
          <tr>
            <td><p class="font-weight-bolder text-center">{{ item.day }}</p><p class="font-weight-bolder text-center">{{ item.hour }}時</td>
            <td><p class="font-weight-bolder text-center">{{ item.main.pressure }} hpa</p></td>
            <td>
                <img src="{{ item.weather.icon }}" alt="{{ item.weather.description}}" class="img-thumbnail"
  style="width:50px;">
                <br>
                {{ item.main.temp }} ℃
            </td>
          </tr>
        {% endfor %}
        </tbody>
        <!--Table body-->
      </table>
      <!--Table-->
    </div>

  </div>

</div>
<!-- Table with panel -->  