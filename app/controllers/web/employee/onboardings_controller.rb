class Web::Employee::OnboardingsController < Web::Employee::ApplicationController
  def first_day
    @onboarding_steps = OnboardingStep.where(period: :first_day)
  end

  def second_day
    @onboarding_steps = OnboardingStep.where(period: :second_day)
  end

  def third_day
    @onboarding_steps = OnboardingStep.where(period: :third_day)
  end

  def fourth_day
    @onboarding_steps = OnboardingStep.where(period: :fourth_day)
  end

  def fifth_day
    @onboarding_steps = OnboardingStep.where(period: :fifth_day)
  end

  def weekly
    @onboarding_steps = OnboardingStep.where(period: :weekly)
  end

  def third_week
    @onboarding_steps = OnboardingStep.where(period: :third_week)
  end
end
