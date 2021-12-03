class Web::OnboardingController < Web::ProtectedApplicationController
  def index
    onboarding_step_tasks_size = current_employee.employee_onboarding_step_tasks.count
    @onboarding_step_task = if onboarding_step_tasks_size > 0
                              OnboardingStep::Task.find_by(position: onboarding_step_tasks_size + 1)
                            else
                              OnboardingStep::Task.find_by(position: 1)
    end
    add_breadcrumbs(onboarding_index_path, 'Адаптация')
  end

  def next
    onboarding_step_task = OnboardingStep::Task.find(params[:id])
    current_employee.onboarding_step_tasks << onboarding_step_task
    current_employee.save
    redirect_to onboarding_index_path
  end
end
