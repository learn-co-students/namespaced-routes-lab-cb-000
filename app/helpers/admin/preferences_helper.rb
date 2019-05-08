module Admin::PreferencesHelper
  def pref_order_helper(prefs, obj)
    if obj == 'artists' && prefs.artist_sort_order == 'ASC' then
      'Ascending'
    elsif obj == 'songs' && prefs.song_sort_order == 'ASC' then
      'Ascending'
    else
      'Descending'
    end
  end
end
