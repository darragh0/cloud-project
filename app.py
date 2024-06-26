"""
The Flask application is run from here.

When the database is populated, there are 49 registered users:
- 1 Administrator    (admin)
- 24 Coordinators    (coordinator1, coordinator2, ..., coordinator24)
- 24 Students        (student1, student2, ..., student24)

Password for Administrator: Admin0
Password for all Coordinators: Coordinator0
Password for all Students: Student0

It is not recommended that you run this python file directly.
Follow the instructions in app/README.md instead.
"""

from application import app, initialise_db
from sqlite3 import OperationalError

_ = app

try:
    initialise_db(populate=True)
except OperationalError:
    pass


if __name__ == '__main__':
    app.run(debug=True)
