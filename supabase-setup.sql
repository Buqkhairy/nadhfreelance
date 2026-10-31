create table if not exists records (
  collection text not null,
  id text not null,
  data jsonb not null,
  primary key (collection, id)
);
alter table records enable row level security;
create policy "team read" on records for select to authenticated using (true);
create policy "team insert" on records for insert to authenticated with check (true);
create policy "team update" on records for update to authenticated using (true) with check (true);
create policy "team delete" on records for delete to authenticated using (true);
alter publication supabase_realtime add table records;
