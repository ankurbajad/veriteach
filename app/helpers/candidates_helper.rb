module CandidatesHelper
  def build_candidate(candidate)
    candidate.districts.build if candidate.districts.empty?
    candidate
  end
end
