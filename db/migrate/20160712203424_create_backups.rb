class CreateBackups < ActiveRecord::Migration
  def change
    create_table :backups do |t|
      t.string :extension
      t.string :origin
      t.string :destiny
      t.boolean :active
      t.integer  :amount_of_day_store
      t.boolean :daily
      t.datetime :in_daily_hour_verify
      t.boolean :in_daily_exclude_sunday
      t.boolean :in_daily_exclude_monday
      t.boolean :in_daily_exclude_tuesday
      t.boolean :in_daily_exclude_wednesday
      t.boolean :in_daily_exclude_thursday
      t.boolean :in_daily_exclude_friday
      t.boolean :in_daily_exclude_saturday
      t.int :in_daily_time_storage
      t.boolean :weekly      
      t.string :in_weekly_day_of_the_week;
      t.int :in_weekly_time_storage
      t.boolean :yearly   
      t.datetime :in_yearly_datetime
       t.int :in_yearly_time_storage
 

      t.timestamps null: false
    end
  end
end
