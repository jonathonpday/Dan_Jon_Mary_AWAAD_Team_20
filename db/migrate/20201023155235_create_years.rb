class CreateYears < ActiveRecord::Migration[6.0]
  def change
    create_table :years do |t|
      t.references :country, null: false, foreign_key: true
      t.decimal :YR2000
      t.decimal :YR2001
      t.decimal :YR2002
      t.decimal :YR2003
      t.decimal :YR2004
      t.decimal :YR2005
      t.decimal :YR2006
      t.decimal :YR2007
      t.decimal :YR2008
      t.decimal :YR2009
      t.decimal :YR2010
      t.decimal :YR2011
      t.decimal :YR2012
      t.decimal :YR2013
      t.decimal :YR2014
      t.decimal :YR2015
      t.decimal :YR2016
      t.decimal :YR2017
      t.decimal :YR2018
      t.decimal :YR2019

      t.timestamps
    end
  end
end
