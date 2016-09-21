class Kintai < ActiveRecord::Base
  # scope :current_month, ->(member) { where( 社員番号: member, 日付: Date.today.beginning_of_month..Date.today.end_of_month )}
  scope :selected_month, ->(member,month) { where( 社員番号:  member, 日付: month.beginning_of_month..month.end_of_month ) }
  scope :current_user, ->(member) { where( 社員番号: member)}

  belongs_to :joutaimaster, foreign_key: :状態1
  belongs_to :shainmaster, foreign_key: :社員番号
  enum 曜日: {日: "0", 月: "1", 火: "2", 水: "3", 木: "4", 金: "5", 土: "6"}

  KINMU_TYPE = %w(001 002 003 004 005 006 007 008 009)

  validate :check_date_input

  def check_date_input
    if 出勤時刻.present? && 退社時刻.present?
      if 出勤時刻 > 退社時刻
        errors.add(:退社時刻, "は出勤時刻以上の値にしてください。")
      end
      if ((退社時刻 - 出勤時刻)/1.hour).to_i > 22
        errors.add(:退社時刻, "は22時間より小さい値にしてください。")
      end
    end
  end

  def self.to_csv
    attributes = %w{id 日付 曜日 曜日 勤務タイプ 実労働時間 普通残業時間 深夜残業時間 普通保守時間
      深夜保守時間 保守携帯回数 状態1 状態2 状態3 備考 社員番号 入力済 holiday 代休相手日付 代休取得区分
      出勤時刻 退社時刻 遅刻時間 早退時間}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |kintai|
        csv << attributes.map{ |attr| kintai.send(attr) }
      end
    end
  end
end
