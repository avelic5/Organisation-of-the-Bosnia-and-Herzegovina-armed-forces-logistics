(define (domain vojna-logistika-final)
    (:requirements :strips :typing :fluents)

    (:types
        division factory warehouse good truck armored-cars aircraft
    )

    (:constants
        Pjesadijska-brigada-4 - division
        Pjesadijska-brigada-5 - division
        Pjesadijska-brigada-6 - division
        Brigada-takticke-podrske - division
        Brigada-zracnih-snaga - division
        BINAS-DD Cajevac RZT Igman TRZ Orao Vitezit Pretis Kosmos BNT - factory
        Skladiste1 Skladiste2 Skladiste3 - warehouse
        Artiljerija Dodatna_Oprema Telekomunikacijska_Oprema Municija Zastitna_Oprema 
            Eksplozivi Puske Napredni_Explozivi Oklopno_Vozilo Tenk Borbeni_Avion 
            Avion_Presretac Helikopter - good
        Kamion1 Kamion2 Kamion3 Kamion4 Kamion5 Kamion6 Kamion7 Kamion8 - truck
    )

    (:predicates
        (produced ?f - factory ?g - good)
        (imported ?g - good)
        (transported ?t - truck ?w - warehouse ?g - good)
        (stored ?w - warehouse ?g - good)
        (consumed ?d - division ?g - good)
        (truck_available ?t - truck)
        (division_needs ?d - division ?g - good)
        (good_producible ?g - good)
        (produced_and_stored ?w - warehouse ?g - good)
    )

    (:action produce_goods
        :parameters (?f - factory ?g - good ?w - warehouse)
        :precondition (and (good_producible ?g) (not (produced ?f ?g)))
        :effect (and (produced ?f ?g) (stored ?w ?g) (produced_and_stored ?w ?g))
    )

    (:action import_goods
        :parameters (?g - good ?w - warehouse)
        :precondition (and (imported ?g) (not (stored ?w ?g)))
        :effect (and (imported ?g) (stored ?w ?g))
    )

    (:action transport_goods
        :parameters (?t - truck ?w - warehouse ?g - good)
        :precondition (and (or (imported ?g) (exists (?f - factory) 
            (produced ?f ?g))) (truck_available ?t))
        :effect (and (transported ?t ?w ?g) (stored ?w ?g) (not (truck_available ?t)))
    )

    (:action consume_goods
        :parameters (?d - division ?g - good ?w - warehouse)
        :precondition (and (stored ?w ?g) (division_needs ?d ?g))
        :effect (consumed ?d ?g)
    )
)