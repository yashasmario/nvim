org = require('orgmode')

org.setup({
    org_agenda_files = {
        '~/zettelkasten/**/*.org',
    },

    org_default_notes_file = '~/zettelkasten/refile.org',
    win_split_mode = {'float', 0.8},
    org_startup_folded = 'content',
    org_hide_leading_stars = true,
    org_startup_indented = true,
    org_cycle_seperator_lines = 1,
    org_agenda_start_on_weekday = false,
    org_agenda_start_day = '',
    org_agenda_skip_schedule_if_done = true,
})
