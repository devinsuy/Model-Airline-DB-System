CREATE TABLE Airports(
    airportID         VARCHAR(10) NOT NULL,
    name              VARCHAR(70) NOT NULL,
    location          VARCHAR(30) NOT NULL,
    faa_abbreviation  VARCHAR(10) NOT NULL,
    
    CONSTRAINT Airports_pk PRIMARY KEY (airportID)
);

CREATE TABLE Airlines(
    airlineID        VARCHAR(10) NOT NULL,
    name             VARCHAR(70) NOT NULL,
    hq_city          VARCHAR(30) NOT NULL,
    
    CONSTRAINT Airlines_pk PRIMARY KEY (airlineID)
);
    

CREATE TABLE AirlineAirports(
    airlineID       VARCHAR(10) NOT NULL,
    airportID       VARCHAR(10) NOT NULL,
    
    CONSTRAINT AirlineAirports_fk1 FOREIGN KEY
        (airlineID) REFERENCES Airlines (airlineID),
    CONSTRAINT AirlineAirports_fk2 FOREIGN KEY
        (airportID) REFERENCES Airports (airportID),
    CONSTRAINT AirlineAirports_pk PRIMARY KEY (airlineID, airportID)
);
 
    
CREATE TABLE Planes(
    planeID                VARCHAR(10) NOT NULL,
    airlineID              VARCHAR(10) NOT NULL,
    manufacturer           VARCHAR(30) NOT NULL,
    module_number          VARCHAR(20) NOT NULL,
    tail_number            VARCHAR(10) NOT NULL,
    max_passengers         VARCHAR(3),
    name                   VARCHAR(15),
    last_serviced_date     DATE NOT NULL,
    
    CONSTRAINT Planes_fk FOREIGN KEY 
        (airlineID) REFERENCES Airlines(airlineID),
    CONSTRAINT Planes_pk PRIMARY KEY (planeID)
);

CREATE TABLE Crews (
    crewID             VARCHAR(10)  NOT NULL,
    assignment_date    DATE         NOT NULL,
    
    CONSTRAINT Crews_pk PRIMARY KEY (crewID)    
);


CREATE TABLE Employees(
    faa_ID        VARCHAR(10)    NOT NULL,
    first_name    VARCHAR(25)    NOT NULL,
    last_name     VARCHAR(25)    NOT NULL,
    crewID       VARCHAR(10)    NOT NULL,
    
    CONSTRAINT Employees_pk PRIMARY KEY (faa_ID),
    CONSTRAINT Employees_fk FOREIGN KEY
        (crewID) REFERENCES Crews (crewID)
);
    
CREATE TABLE Captains(
    faa_ID                  VARCHAR(10)  NOT NULL,
    latest_drugtest_date    DATE         NOT NULL,
    
    CONSTRAINT Captains_pk PRIMARY KEY (faa_ID),
    CONSTRAINT Captains_fk FOREIGN KEY (faa_ID) 
        REFERENCES Employees(faa_ID)
);


CREATE TABLE Pilots(
    faa_ID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT Pilots_pk     PRIMARY KEY (faa_ID),
    CONSTRAINT Pilots_fk    FOREIGN KEY
        (faa_ID) REFERENCES Employees (faa_ID)
);

CREATE TABLE CoPilots(
    faa_ID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT CoPilots_pk     PRIMARY KEY (faa_ID),
    CONSTRAINT CoPilots_fk    FOREIGN KEY
        (faa_ID) REFERENCES Employees (faa_ID)
);


CREATE TABLE Navigators(
    faa_ID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT Navigators_pk     PRIMARY KEY (faa_ID),
    CONSTRAINT Navigators_fk     FOREIGN KEY
        (faa_ID) REFERENCES Employees (faa_ID)
);


CREATE TABLE FlightAttendants(
    faa_ID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT FlightAttendants_pk     PRIMARY KEY (faa_ID),
    CONSTRAINT FlightAttendants_fk     FOREIGN KEY
        (faa_ID) REFERENCES Employees (faa_ID)  
);
    
CREATE TABLE Flights(
    flightID          VARCHAR(10)    NOT NULL,
    crewID            VARCHAR(10)    NOT NULL,
    planeID           VARCHAR(10)    NOT NULL,
    airlineID         VARCHAR(10)    NOT NULL,
    flight_number     VARCHAR(15)    NOT NULL,
    departure_time    TIMESTAMP      NOT NULL,
    arrival_time      TIMESTAMP      NOT NULL,
    destination       VARCHAR(20)    NOT NULL,
    
    CONSTRAINT Flights_fk1 FOREIGN KEY 
        (crewID) REFERENCES Crews(crewID),
    CONSTRAINT Flights_fk2 FOREIGN KEY 
        (planeID) REFERENCES Planes(planeID),
    CONSTRAINT Flights_fk3 FOREIGN KEY 
        (airlineID) REFERENCES Airlines(airlineID),
    CONSTRAINT Flights_pk PRIMARY KEY (flightID)
);

CREATE TABLE Internationals(
    flightID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT Internationals_fk FOREIGN KEY
        (flightID) REFERENCES Flights (flightID),
    CONSTRAINT Internationals_pk PRIMARY KEY (flightID)
);

CREATE TABLE Domestics(
    flightID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT Domestics_fk FOREIGN KEY
        (flightID) REFERENCES Flights (flightID),
    CONSTRAINT Domestics_pk PRIMARY KEY (flightID)
);

CREATE TABLE Locals(
    flightID    VARCHAR(10)    NOT NULL,
    
    CONSTRAINT Locals_fk FOREIGN KEY
        (flightID) REFERENCES Flights (flightID),
    CONSTRAINT Locals_pk PRIMARY KEY (flightID)
);

CREATE TABLE ChargedItems(
    flightID    VARCHAR(10)    NOT NULL,
    item_type   VARCHAR(20)    NOT NULL,
    price       DECIMAL(10,2)  NOT NULL,
    
    CONSTRAINT ChargedItems_fk FOREIGN KEY
        (flightID) REFERENCES Flights (flightID),
    CONSTRAINT ChargedItems_pk PRIMARY KEY 
        (flightID, item_type, price)
);


CREATE TABLE IncidentReports(
    faa_ID                VARCHAR(10)    NOT NULL,
    flightID                  VARCHAR(10)    NOT NULL,
    incident_type             VARCHAR(35)    NOT NULL,
    description               VARCHAR(150)   NOT NULL,
    involving_employee_faaID  VARCHAR(10)    NOT NULL,
    
    CONSTRAINT IncidentReport_fk1 FOREIGN KEY
        (faa_ID) REFERENCES Employees (faa_ID),
    CONSTRAINT IncidentReport_fk2 FOREIGN KEY
        (flightID) REFERENCES Flights (flightID),
    CONSTRAINT IncidentReport_pk PRIMARY KEY (faa_ID, flightID)
);

CREATE TABLE FlightInstances(
    flightInstanceID          VARCHAR(10)  NOT NULL,
    actual_depart_datetime    TIMESTAMP     NOT NULL,
    actual_arrive_datetime    TIMESTAMP     NOT NULL,
    airportID                 VARCHAR(10)  NOT NULL,
    flightID                  VARCHAR(10)  NOT NULL,
    
    CONSTRAINT Flight_instances_fk1 FOREIGN KEY (airportID) REFERENCES Airports(airportID),
    CONSTRAINT Flight_instances_fk2 FOREIGN KEY (flightID) REFERENCES Flights(flightID),
    CONSTRAINT Flight_instances_pk PRIMARY KEY (flightInstanceID)
);