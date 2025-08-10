# Rail Logistics SQL (PostgreSQL)

Проект для демонстрации моделирования железнодорожной логистики и расчёта KPI в PostgreSQL.

## Что внутри
- **schema/** — DDL/данные/вьюхи.
- **queries/** — готовые KPI-запросы.
- **data/** — тестовые CSV.
- **docs/** — (опционально) диаграммы/описания.

## Как запустить (PostgreSQL)
```bash
createdb rail_logistics
psql -d rail_logistics -f schema/01_tables.sql
psql -d rail_logistics -f schema/02_constraints.sql
psql -d rail_logistics -f schema/03_seed_data.sql
psql -d rail_logistics -f schema/04_views.sql
```

> Примечание: в `03_seed_data.sql` использованы обычные `INSERT` для совместимости без путей к файлам. CSV лежат в `data/` на случай, если вы захотите загрузить их через `\copy` вручную.

## Примеры KPI
- On-time % по месяцам — `queries/kpi_on_time.sql`
- Стоимость за тонно-километр — `queries/kpi_cost_per_ton_km.sql` (упрощённо)
- Рейтинг экспедиторов и SLA — `queries/kpi_forwarder_score.sql`
- Dwell time по станциям — `queries/dwell_time_by_station.sql`
- Нарушения SLA — `queries/sla_breaches.sql`

## Мини-проектные цели
1. Нормализованная модель рейсов/событий/стоимостей.
2. Метрики: точность сроков, простои, стоимость, штрафы.
3. Портфолио-проект для собеседований: чистая структура, читаемые SQL.

## Лицензия
MIT