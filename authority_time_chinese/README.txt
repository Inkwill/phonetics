
==========================================
DDBC Chinese Calendar database, Oct. 2010
==========================================

:Author: Simon Wiles, DDBC
:Contact: digital_archives@ddbc.edu.tw
:Web site: http://authority.ddbc.edu.tw/
:Date: October 2010

.. contents::


Description
===========

This archive contains the current snapshot of the DDBC Chinese Calendar
database, as of October 2010.

The Chinese calendar data has been assembled by the Library and Information
Center of Dharma Drum Buddhist College 法鼓佛教學院 (http://www.ddbc.edu.tw/)
between 2008 and 2010.

This database is part of the Buddhist Authority Database Project, hosted at DDBC
(http://authority.ddbc.edu.tw/), which also contains full data for the Japanese
and Korean calendars.

For the latest snapshot, and for more information and downloads, visit
http://authority.ddbc.edu.tw/docs/open_content/.


License
=======

The data is distributed under a `Creative Commons Attribution-ShareAlike 3.0
Unported`__. See COPYING.txt_ for the complete license.

.. __: http://creativecommons.org/licenses/by-sa/3.0/
.. _COPYING.txt: COPYING.html


Archive Contents
================

The archive contains the following files:


* `authority_time_chinese.sql`
   The SQL dump itself, complete with all internal schema information
   and relations properly arranged, and only the Chinese data.

* `README.txt <README.html>`_
   This document, which is in reStructuredText format

* `SCHEMA.txt <SCHEMA.html>`_
   Database schematic documentation, detailing table and field structure,
   and internal relations.

* `authority_time_chinese.svg`
   Database schematic in the form of a Scalar Vector Graphics file,
   created using Dia_.

* `COPYING.txt <COPYING.html>`_
   Complete license information.

* `docs/`
   Documentation for the Database in XHTML format, generated from the
   reStructuredText files.

.. _Dia: http://live.gnome.org/Dia


Requirements
============

The SQL import file contained in this archive was produced from a MySQL 5.x
series database.  The Foreign Key constraints and relations that are part of the
schema require the InnoDB transactional storage engine, which is part of most
default MySQL installs, and will be the default storage engine in MySQL from
version 5.5 onwards.  At present we advise this environment for depolying the
Buddhist Authority Database data, although a migration to PostgreSQL is a
possibility at some point.  However, it should be possible to convert the schema
into other formats.  If you have success with this, or require any assistance,
please contact us.


Notes
=====

For a full description of the Database and it's relations, see `SCHEMA.txt
<SCHEMA.html>`_.

Dealing with prolepsis in East Asian calendars
----------------------------------------------

Prolepsis, in this context, is the use of a dating system to cover events which
do not occur during its legitimate time-frame. In this way the proleptic
Gregorian or proleptic Julian calendars can be used to refer to dates before the
existence of these calendars themselves.

In the context of the Chinese calendar, this phenomenon is commonly manifest in
two kinds of circumstances:

* the first occurs when historical sources refer to dates in their respective
  futures, specifying a year of an era (年號) which subsquently never comes to
  pass;

* the second is where a historical source continues to use the dating system of
  an era, emperor or dynasty after that era, emperor or dynasty has ceased to
  exist.

To be able to cope with this, our database contains records which cover, where
appropriate, a range of dates before and/or after the actual historical period
spanned by a given era, emperor or dynasty. A result of this is that the extents
of these periods as reported by the database will be inaccurate in some cases.

We have therefore introduced into our database a status field, which allows us
to record that the period covered by the record in question is merely
hypothetical, or 'proleptic'. This is indicated by a 'P' in this field. In
addition, a `start_from` field has been added to facilitate the recording of
lunar months which straddle a change in status: such a lunar month is
represented in the database by two records, where the latter has a start_from
value indicating the day on which it becomes valid. Please note, however, that
the research required to accurately and exhaustively populate these fields has
yet to be completed, and as a result the beginning and ending dates reported by
the database for particular reigns should not be taken as authoratative.


Current Limitations
-------------------

The DDBC Time Authority Database has certain limitations.

* Indication of the actual date ranges covered by dynasties, emperors and eras
  is not complete (see above_). As such the database does not give 100%
  reliable information about the historal duration of these periods.

* The eclipse field indicates the day on which traditional sources report an
  eclipse, and is not fully populated.

* Certain smaller, peripheral dynasties are not included in the database.

.. _above: `Dealing with prolepsis in East Asian calendars`_
