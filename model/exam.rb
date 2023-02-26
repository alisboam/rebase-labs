class Exam < ActiveRecord::Base
  acts_as_copy_target

  def self.load_from_csv(csv_path)
	Exam.copy_from csv_path, :map => {
		'cpf' => 'cpf',
		'nome paciente' => 'name',
		'email paciente' => 'email',
		'data nascimento paciente' => 'birthdate',
		'endereço/rua paciente' => 'address',
		'cidade paciente' => 'city',
		'estado patiente' => 'state',
		'crm médico' => 'doctor_crm',
		'crm médico estado' => 'doctor_state',
		'nome médico' => 'doctor_name',
		'email médico' => 'doctor_email',
		'token resultado exame' => 'token',
		'data exame' => 'exam_date',
		'tipo exame' => 'exam_name',
		'limites tipo exame' => 'exam_reference',
		'resultado tipo exame' => 'result'
	}
  end
end

