# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Airplane(models.Model):
    planeid = models.AutoField(db_column='PlaneID', primary_key=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=100)  # Field name made lowercase.
    lastservicedate = models.DateField(db_column='LastServiceDate', blank=True, null=True)  # Field name made lowercase.
    nextservicedate = models.DateField(db_column='NextServiceDate')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Airplane'
    def __str__(self):
        return ("%s, %s, s%" % (self.planeid, self.lastservicedate, self.model))

class Airport(models.Model):
    airportid = models.AutoField(db_column='AirportID', primary_key=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=200)  # Field name made lowercase.
    address = models.CharField(db_column='Address', max_length=200)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Airport'
    def __str__(self):
        return ("%s, %s" % (self.airportid, self.address))

class Customer(models.Model):
    customerid = models.AutoField(db_column='CustomerID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='FirstName', max_length=200)  # Field name made lowercase.
    lastname = models.CharField(db_column='LastName', max_length=200)  # Field name made lowercase.
    dob = models.DateField(db_column='DOB')  # Field name made lowercase.
    phonenum = models.CharField(db_column='PhoneNum', max_length=12, blank=True, null=True)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=200)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Customer'


class Feedback(models.Model):
    feedbackid = models.AutoField(db_column='FeedbackID', primary_key=True)  # Field name made lowercase.
    rating = models.CharField(db_column='Rating', max_length=45)  # Field name made lowercase.
    note = models.CharField(db_column='Note', max_length=255, blank=True, null=True)  # Field name made lowercase.
    reservationid = models.IntegerField(db_column='ReservationID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Feedback'
    def __str__(self):
        return ("%s, %s, %s, s%" % (self.feedbackid, self.rating, self.note, self.reservationid))

class Flightschedule(models.Model):
    flightnum = models.AutoField(db_column='FlightNum', primary_key=True)  # Field name made lowercase.
    departuretime = models.TimeField(db_column='DepartureTime')  # Field name made lowercase.
    arrivaltime = models.TimeField(db_column='ArrivalTime')  # Field name made lowercase.
    origindest = models.CharField(db_column='OriginDest', max_length=45)  # Field name made lowercase.
    arrivaldest = models.CharField(db_column='ArrivalDest', max_length=200)  # Field name made lowercase.
    date = models.CharField(db_column='Date', max_length=200)  # Field name made lowercase.
    cost = models.IntegerField(db_column='Cost')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'FlightSchedule'
    def __str__(self):
        return ("%s, %s, %s, %s, %s, %s, %s" %(self.flightnum, self.departuretime, self.origindest,  self.arrivaldest, self.arrivaltime, self.date, self.cost))


class Reservation(models.Model):
    reservationid = models.AutoField(db_column='ReservationID', primary_key=True)  # Field name made lowercase.
    reservationdate = models.DateField(db_column='ReservationDate')  # Field name made lowercase.
    customerid = models.IntegerField(db_column='CustomerID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Reservation'

    def __str__(self):
        return ("%s, %s, %s" % (self.reservationid, self.reservationdate, self.customerid))

class Reward(models.Model):
    rewardid = models.AutoField(db_column='RewardID', primary_key=True)  # Field name made lowercase.
    rewardtype = models.CharField(db_column='RewardType', max_length=45)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Reward'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
