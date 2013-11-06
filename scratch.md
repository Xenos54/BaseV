.row
  .col-lg-6.col-lg-offset-3
    table#users-table.table.table-bordered.table-striped
      caption Clients
      thead
        tr
          th Name
          th Email
          th Company
          th Created
          th Report
          th Address

      tbody
        - @users.each do |user|
          tr
            td #{user.name}
            td #{user.email}
            td #{user.company}
            td #{user.created_at}
            td #{user.reports[0].name}
            td #{user.reports[0].address}
      = @current_user.name
