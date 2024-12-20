def mohasebe_bime(hogog,darsade_bime):
    bime=hogog*(darsade_bime/100)
    return bime

def fishe_hogogi(moshakhasate_har_karmand,hogog,darsade_bime):
    bime=mohasebe_bime(hogog,darsade_bime)
    hogoge_kol=hogog-bime
    return f"fishe hogogi baraye karmand{moshakhasate_har_karmand}:\n hogog:{hogog}\n bime:{bime}\n hogoge kol{hogoge_kol}"

def main():
    karmandan={}
    darsadebime= float(input("darsade bime ra vared kon:"))
    for i in range(1,11):
        hogog=float(input(f"hogoge karmande{i}ro vared kon:"))
        karmandan[i]=hogog
    with open("fish.txt", "w") as file:
        for moshakhasate_har_karmand,hogog in karmandan.items():
            fish=fishe_hogogi(moshakhasate_har_karmand,hogog,darsadebime)
            file.write(fish+"\n")
            print(fish)
if __name__=="__main__":
    main()