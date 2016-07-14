class CreateBackups < ActiveRecord::Migration
  def change
    create_table :backups do |t|
      t.string :origin
      t.string :destiny
      t.string :extension  
      t.boolean :daily
      t.datetime :in_daily_hour_verify
      t.boolean :in_daily_exclude_sunday
      t.boolean :in_daily_exclude_monday
      t.boolean :in_daily_exclude_tuesday
      t.boolean :in_daily_exclude_wednesday
      t.boolean :in_daily_exclude_thursday
      t.boolean :in_daily_exclude_friday
      t.boolean :in_daily_exclude_saturday
      t.integer :in_daily_time_storage
      t.boolean :weekly
      t.string :in_weekly_day_of_the_week;
      t.integer :in_weekly_time_storage
      t.boolean :yearly
      t.datetime :in_yearly_datetime
      t.integer :in_yearly_time_storage
      t.boolean :active   
      t.timestamps null: false
    end
  end
end
