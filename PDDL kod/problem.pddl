(define (problem final-logistics)
    (:domain vojna-logistika-final)

    (:objects
        Skladiste1 Skladiste2 Skladiste3 - warehouse
        Artiljerija Dodatna_Oprema Telekomunikacijska_Oprema Municija Zastitna_Oprema 
            Eksplozivi Puske Napredni_Eksplozivi Oklopna_Vozila Tenkovi Borbeni_Avioni 
            Avioni_Presretaci Helikopteri - good
        Kamion1 Kamion2 Kamion3 Kamion4 Kamion5 Kamion6 Kamion7 Kamion8 - truck
        BINAS-DD Cajevac RZT Igman TRZ Orao Vitezit Pretis Kosmos BNT - factory
    )

    (:init
        ;; Kamioni
        (truck_available Kamion1)
        (truck_available Kamion2)
        (truck_available Kamion3)
        (truck_available Kamion4)
        (truck_available Kamion5)
        (truck_available Kamion6)
        (truck_available Kamion7)
        (truck_available Kamion8)

        ;; Oprema koja se moze proizvoditi
        (good_producible Artiljerija)
        (good_producible Dodatna_Oprema)
        (good_producible Telekomunikacijska_Oprema)
        (good_producible Municija)
        (good_producible Zastitna_Oprema)
        (good_producible Eksplozivi)
        (good_producible Puske)

        ;; Uvozimo sve
        (imported Napredni_Eksplozivi)
        (imported Oklopna_Vozila)
        (imported Tenkovi)
        (imported Borbeni_Avioni)
        (imported Avioni_Presretaci)
        (imported Helikopteri)

        ;; Sva skladista prazna
        (not (stored Skladiste1 Artiljerija))
        (not (stored Skladiste1 Dodatna_Oprema))
        (not (stored Skladiste1 Telekomunikacijska_Oprema))
        (not (stored Skladiste1 Municija))
        (not (stored Skladiste1 Zastitna_Oprema))
        (not (stored Skladiste1 Eksplozivi))
        (not (stored Skladiste1 Puske))
        (not (stored Skladiste1 Napredni_Eksplozivi))
        (not (stored Skladiste1 Oklopna_Vozila))
        (not (stored Skladiste1 Tenkovi))
        (not (stored Skladiste1 Borbeni_Avioni))
        (not (stored Skladiste1 Avioni_Presretaci))
        (not (stored Skladiste1 Helikopteri))

        (not (stored Skladiste2 Artiljerija))
        (not (stored Skladiste2 Dodatna_Oprema))
        (not (stored Skladiste2 Telekomunikacijska_Oprema))
        (not (stored Skladiste2 Municija))
        (not (stored Skladiste2 Zastitna_Oprema))
        (not (stored Skladiste2 Eksplozivi))
        (not (stored Skladiste2 Puske))
        (not (stored Skladiste2 Napredni_Eksplozivi))
        (not (stored Skladiste2 Oklopna_Vozila))
        (not (stored Skladiste2 Tenkovi))
        (not (stored Skladiste2 Borbeni_Avioni))
        (not (stored Skladiste2 Avioni_Presretaci))
        (not (stored Skladiste2 Helikopteri))

        (not (stored Skladiste3 Artiljerija))
        (not (stored Skladiste3 Dodatna_Oprema))
        (not (stored Skladiste3 Telekomunikacijska_Oprema))
        (not (stored Skladiste3 Municija))
        (not (stored Skladiste3 Zastitna_Oprema))
        (not (stored Skladiste3 Eksplozivi))
        (not (stored Skladiste3 Puske))
        (not (stored Skladiste3 Napredni_Eksplozivi))
        (not (stored Skladiste3 Oklopna_Vozila))
        (not (stored Skladiste3 Tenkovi))
        (not (stored Skladiste3 Borbeni_Avioni))
        (not (stored Skladiste3 Avioni_Presretaci))
        (not (stored Skladiste3 Helikopteri))

        ;; Postavljamo sta brigade trebaju
        (division_needs Pjesadijska-brigada-4 Artiljerija)
        (division_needs Pjesadijska-brigada-4 Dodatna_Oprema)
        (division_needs Pjesadijska-brigada-4 Telekomunikacijska_Oprema)
        (division_needs Pjesadijska-brigada-4 Municija)
        (division_needs Pjesadijska-brigada-4 Zastitna_Oprema)
        (division_needs Pjesadijska-brigada-4 Eksplozivi)
        (division_needs Pjesadijska-brigada-4 Oklopna_Vozila)
        (division_needs Pjesadijska-brigada-4 Tenkovi)
        (division_needs Pjesadijska-brigada-4 Puske)
        
        (division_needs Pjesadijska-brigada-5 Artiljerija)
        (division_needs Pjesadijska-brigada-5 Dodatna_Oprema)
        (division_needs Pjesadijska-brigada-5 Telekomunikacijska_Oprema)
        (division_needs Pjesadijska-brigada-5 Municija)
        (division_needs Pjesadijska-brigada-5 Zastitna_Oprema)
        (division_needs Pjesadijska-brigada-5 Eksplozivi)
        (division_needs Pjesadijska-brigada-5 Oklopna_Vozila)
        (division_needs Pjesadijska-brigada-5 Tenkovi)
        (division_needs Pjesadijska-brigada-5 Puske)
        
        (division_needs Pjesadijska-brigada-6 Artiljerija)
        (division_needs Pjesadijska-brigada-6 Dodatna_Oprema)
        (division_needs Pjesadijska-brigada-6 Telekomunikacijska_Oprema)
        (division_needs Pjesadijska-brigada-6 Municija)
        (division_needs Pjesadijska-brigada-6 Zastitna_Oprema)
        (division_needs Pjesadijska-brigada-6 Eksplozivi)
        (division_needs Pjesadijska-brigada-6 Oklopna_Vozila)
        (division_needs Pjesadijska-brigada-6 Tenkovi)
        (division_needs Pjesadijska-brigada-6 Puske)
        
        (division_needs Brigada-zracnih-snaga Borbeni_Avioni)
        (division_needs Brigada-zracnih-snaga Avioni_Presretaci)
        (division_needs Brigada-zracnih-snaga Helikopteri)
        
        (division_needs Brigada-takticke-podrske Dodatna_Oprema)
        (division_needs Brigada-takticke-podrske Telekomunikacijska_Oprema)
        (division_needs Brigada-takticke-podrske Zastitna_Oprema)
        (division_needs Brigada-takticke-podrske Napredni_Eksplozivi)
    )

    (:goal
        (and
            (consumed Pjesadijska-brigada-4 Artiljerija)
            (consumed Pjesadijska-brigada-4 Dodatna_Oprema)
            (consumed Pjesadijska-brigada-4 Telekomunikacijska_Oprema)
            (consumed Pjesadijska-brigada-4 Municija)
            (consumed Pjesadijska-brigada-4 Zastitna_Oprema)
            (consumed Pjesadijska-brigada-4 Eksplozivi)
            (consumed Pjesadijska-brigada-4 Oklopna_Vozila)
            (consumed Pjesadijska-brigada-4 Tenkovi)
            (consumed Pjesadijska-brigada-4 Puske)
            
            (consumed Pjesadijska-brigada-5 Artiljerija)
            (consumed Pjesadijska-brigada-5 Dodatna_Oprema)
            (consumed Pjesadijska-brigada-5 Telekomunikacijska_Oprema)
            (consumed Pjesadijska-brigada-5 Municija)
            (consumed Pjesadijska-brigada-5 Zastitna_Oprema)
            (consumed Pjesadijska-brigada-5 Eksplozivi)
            (consumed Pjesadijska-brigada-5 Oklopna_Vozila)
            (consumed Pjesadijska-brigada-5 Tenkovi)
            (consumed Pjesadijska-brigada-5 Puske)
            
            (consumed Pjesadijska-brigada-6 Artiljerija)
            (consumed Pjesadijska-brigada-6 Dodatna_Oprema)
            (consumed Pjesadijska-brigada-6 Telekomunikacijska_Oprema)
            (consumed Pjesadijska-brigada-6 Municija)
            (consumed Pjesadijska-brigada-6 Zastitna_Oprema)
            (consumed Pjesadijska-brigada-6 Eksplozivi)
            (consumed Pjesadijska-brigada-6 Oklopna_Vozila)
            (consumed Pjesadijska-brigada-6 Tenkovi)
            (consumed Pjesadijska-brigada-6 Puske)
            
            (consumed Brigada-takticke-podrske Dodatna_Oprema)
            (consumed Brigada-takticke-podrske Telekomunikacijska_Oprema)
            (consumed Brigada-takticke-podrske Zastitna_Oprema)
            (consumed Brigada-takticke-podrske Napredni_Eksplozivi)
            
            (consumed Brigada-zracnih-snaga Borbeni_Avioni)
            (consumed Brigada-zracnih-snaga Avioni_Presretaci)
            (consumed Brigada-zracnih-snaga Helikopteri)
        )
    )
)