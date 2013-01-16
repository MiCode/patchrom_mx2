.class public Lcom/meizu/util/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field private static final Animals:[Ljava/lang/String;

.field private static final Gan:[Ljava/lang/String;

.field private static final Zhi:[Ljava/lang/String;

.field private static final lunarInfo:[J

.field private static final year19:[I

.field private static final year20:[I

.field private static final year2000:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xc

    .line 10
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/util/LunarCalendar;->lunarInfo:[J

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/util/LunarCalendar;->year20:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/meizu/util/LunarCalendar;->year19:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/meizu/util/LunarCalendar;->year2000:[I

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7532"

    aput-object v1, v0, v4

    const-string v1, "\u4e59"

    aput-object v1, v0, v5

    const-string v1, "\u4e19"

    aput-object v1, v0, v6

    const-string v1, "\u4e01"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u620a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5df1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5e9a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u8f9b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u58ec"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u7678"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/util/LunarCalendar;->Gan:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u5b50"

    aput-object v1, v0, v4

    const-string v1, "\u4e11"

    aput-object v1, v0, v5

    const-string v1, "\u5bc5"

    aput-object v1, v0, v6

    const-string v1, "\u536f"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u8fb0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5df3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5348"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u672a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7533"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9149"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u620c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u4ea5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/util/LunarCalendar;->Zhi:[Ljava/lang/String;

    .line 50
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u9f20"

    aput-object v1, v0, v4

    const-string v1, "\u725b"

    aput-object v1, v0, v5

    const-string v1, "\u864e"

    aput-object v1, v0, v6

    const-string v1, "\u5154"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u9f99"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7f8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7334"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u732a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/util/LunarCalendar;->Animals:[Ljava/lang/String;

    return-void

    .line 10
    nop

    :array_0
    .array-data 0x8
        0xd8t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final AnimalsYear(I)Ljava/lang/String;
    .locals 2
    .parameter "y"

    .prologue
    .line 115
    sget-object v0, Lcom/meizu/util/LunarCalendar;->Animals:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final calElement(III)[J
    .locals 13
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 224
    const/4 v8, 0x7

    new-array v3, v8, [J

    .line 225
    .local v3, nongDate:[J
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v7, 0x0

    .local v7, temp:I
    const/4 v2, 0x0

    .line 227
    .local v2, leap:I
    new-instance v8, Ljava/util/GregorianCalendar;

    const/16 v9, 0x76c

    const/4 v10, 0x0

    const/16 v11, 0x1f

    invoke-direct {v8, v9, v10, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 229
    .local v0, baseDate:Ljava/util/Date;
    new-instance v8, Ljava/util/GregorianCalendar;

    add-int/lit8 v9, p1, -0x1

    invoke-direct {v8, p0, v9, p2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 230
    .local v4, objDate:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long v5, v8, v10

    .line 231
    .local v5, offset:J
    const/4 v8, 0x5

    const-wide/16 v9, 0x28

    add-long/2addr v9, v5

    aput-wide v9, v3, v8

    .line 232
    const/4 v8, 0x4

    const-wide/16 v9, 0xe

    aput-wide v9, v3, v8

    .line 234
    const/16 v1, 0x76c

    :goto_0
    const/16 v8, 0x802

    if-ge v1, v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_0

    .line 235
    invoke-static {v1}, Lcom/meizu/util/LunarCalendar;->lYearDays(I)I

    move-result v7

    .line 236
    int-to-long v8, v7

    sub-long/2addr v5, v8

    .line 237
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_1

    .line 240
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 241
    add-int/lit8 v1, v1, -0x1

    .line 242
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0xc

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 244
    :cond_1
    const/4 v8, 0x0

    int-to-long v9, v1

    aput-wide v9, v3, v8

    .line 245
    const/4 v8, 0x3

    add-int/lit16 v9, v1, -0x748

    int-to-long v9, v9

    aput-wide v9, v3, v8

    .line 246
    invoke-static {v1}, Lcom/meizu/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 247
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 249
    const/4 v1, 0x1

    :goto_1
    const/16 v8, 0xd

    if-ge v1, v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_5

    .line 251
    if-lez v2, :cond_4

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_4

    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 252
    add-int/lit8 v1, v1, -0x1

    .line 253
    const/4 v8, 0x6

    const-wide/16 v9, 0x1

    aput-wide v9, v3, v8

    .line 254
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/meizu/util/LunarCalendar;->leapDays(I)I

    move-result v7

    .line 260
    :goto_2
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_2

    .line 261
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 262
    :cond_2
    int-to-long v8, v7

    sub-long/2addr v5, v8

    .line 263
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 264
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 249
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_4
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    long-to-int v8, v8

    invoke-static {v8, v1}, Lcom/meizu/util/LunarCalendar;->monthDays(II)I

    move-result v7

    goto :goto_2

    .line 267
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_6

    if-lez v2, :cond_6

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_6

    .line 268
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 269
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 276
    :cond_6
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_7

    .line 277
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 278
    add-int/lit8 v1, v1, -0x1

    .line 279
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 281
    :cond_7
    const/4 v8, 0x1

    int-to-long v9, v1

    aput-wide v9, v3, v8

    .line 282
    const/4 v8, 0x2

    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    aput-wide v9, v3, v8

    .line 283
    return-object v3

    .line 271
    :cond_8
    const/4 v8, 0x6

    const-wide/16 v9, 0x1

    aput-wide v9, v3, v8

    .line 272
    add-int/lit8 v1, v1, -0x1

    .line 273
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    goto :goto_3
.end method

.method public static final cyclical(I)Ljava/lang/String;
    .locals 2
    .parameter "y"

    .prologue
    .line 135
    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 136
    .local v0, num:I
    invoke-static {v0}, Lcom/meizu/util/LunarCalendar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/meizu/util/LunarCalendar;->Gan:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/meizu/util/LunarCalendar;->Zhi:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/util/Calendar;)[J
    .locals 5
    .parameter "today"

    .prologue
    .line 346
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 347
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 348
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 349
    .local v0, date:I
    invoke-static {v3, v2, v0}, Lcom/meizu/util/LunarCalendar;->calElement(III)[J

    move-result-object v1

    .line 350
    .local v1, l:[J
    return-object v1
.end method

.method public static final getChinaDate(I)Ljava/lang/String;
    .locals 5
    .parameter "day"

    .prologue
    .line 287
    const-string v0, ""

    .line 288
    .local v0, a:Ljava/lang/String;
    const/16 v3, 0xa

    if-ne p0, v3, :cond_0

    .line 289
    const-string v3, "\u521d\u5341"

    .line 333
    :goto_0
    return-object v3

    .line 290
    :cond_0
    const/16 v3, 0x14

    if-ne p0, v3, :cond_1

    .line 291
    const-string v3, "\u4e8c\u5341"

    goto :goto_0

    .line 292
    :cond_1
    const/16 v3, 0x1e

    if-ne p0, v3, :cond_2

    .line 293
    const-string v3, "\u4e09\u5341"

    goto :goto_0

    .line 294
    :cond_2
    div-int/lit8 v2, p0, 0xa

    .line 295
    .local v2, two:I
    if-nez v2, :cond_3

    .line 296
    const-string v0, "\u521d"

    .line 297
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 298
    const-string v0, "\u5341"

    .line 299
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 300
    const-string v0, "\u5eff"

    .line 301
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 302
    const-string v0, "\u4e09"

    .line 303
    :cond_6
    rem-int/lit8 v1, p0, 0xa

    .line 304
    .local v1, one:I
    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v3, v0

    .line 333
    goto :goto_0

    .line 306
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    goto :goto_1

    .line 309
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e8c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    goto :goto_1

    .line 312
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    goto :goto_1

    .line 315
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u56db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    goto :goto_1

    .line 318
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e94"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    goto :goto_1

    .line 321
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u516d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    goto :goto_1

    .line 324
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e03"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    goto/16 :goto_1

    .line 327
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u516b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    goto/16 :goto_1

    .line 330
    :pswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e5d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static final lYearDays(I)I
    .locals 6
    .parameter "y"

    .prologue
    .line 60
    const/16 v1, 0x15c

    .line 61
    .local v1, sum:I
    const v0, 0x8000

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 62
    sget-object v2, Lcom/meizu/util/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 61
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/meizu/util/LunarCalendar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method private static final leapDays(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/meizu/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/meizu/util/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 77
    const/16 v0, 0x1e

    .line 81
    :goto_0
    return v0

    .line 79
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final leapMonth(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 91
    sget-object v0, Lcom/meizu/util/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static final monthDays(II)I
    .locals 4
    .parameter "y"
    .parameter "m"

    .prologue
    .line 102
    sget-object v0, Lcom/meizu/util/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x1

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    const/16 v0, 0x1d

    .line 105
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public static today(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 360
    if-nez p0, :cond_0

    .line 361
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 362
    :cond_0
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 363
    .local v1, today:Ljava/util/Calendar;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy\u5e74MM\u6708dd\u65e5 EEE"

    invoke-direct {v0, v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 365
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 367
    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x0

    return-object v2

    .line 367
    :catchall_0
    move-exception v2

    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x0

    throw v2
.end method

.method public static today()[J
    .locals 6

    .prologue
    .line 337
    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 338
    .local v3, today:Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 339
    .local v4, year:I
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 340
    .local v2, month:I
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 341
    .local v0, date:I
    invoke-static {v4, v2, v0}, Lcom/meizu/util/LunarCalendar;->calElement(III)[J

    move-result-object v1

    .line 342
    .local v1, l:[J
    return-object v1
.end method


# virtual methods
.method protected final Lunar(II)[J
    .locals 13
    .parameter "y"
    .parameter "m"

    .prologue
    .line 147
    const/4 v8, 0x7

    new-array v3, v8, [J

    .line 148
    .local v3, nongDate:[J
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v7, 0x0

    .local v7, temp:I
    const/4 v2, 0x0

    .line 150
    .local v2, leap:I
    new-instance v8, Ljava/util/GregorianCalendar;

    const/16 v9, 0xed8

    const/4 v10, 0x1

    const/16 v11, 0x1f

    invoke-direct {v8, v9, v10, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 152
    .local v0, baseDate:Ljava/util/Date;
    new-instance v8, Ljava/util/GregorianCalendar;

    add-int/lit16 v9, p1, 0x76c

    const/4 v10, 0x1

    invoke-direct {v8, v9, p2, v10}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 153
    .local v4, objDate:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long v5, v8, v10

    .line 154
    .local v5, offset:J
    const/16 v8, 0x7d0

    if-ge p1, v8, :cond_0

    .line 155
    sget-object v8, Lcom/meizu/util/LunarCalendar;->year19:[I

    add-int/lit8 v9, p2, -0x1

    aget v8, v8, v9

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 156
    :cond_0
    const/16 v8, 0x7d0

    if-le p1, v8, :cond_1

    .line 157
    sget-object v8, Lcom/meizu/util/LunarCalendar;->year20:[I

    add-int/lit8 v9, p2, -0x1

    aget v8, v8, v9

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 158
    :cond_1
    const/16 v8, 0x7d0

    if-ne p1, v8, :cond_2

    .line 159
    sget-object v8, Lcom/meizu/util/LunarCalendar;->year2000:[I

    add-int/lit8 v9, p2, -0x1

    aget v8, v8, v9

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 160
    :cond_2
    const/4 v8, 0x5

    const-wide/16 v9, 0x28

    add-long/2addr v9, v5

    aput-wide v9, v3, v8

    .line 161
    const/4 v8, 0x4

    const-wide/16 v9, 0xe

    aput-wide v9, v3, v8

    .line 163
    const/16 v1, 0x76c

    :goto_0
    const/16 v8, 0x802

    if-ge v1, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_3

    .line 164
    invoke-static {v1}, Lcom/meizu/util/LunarCalendar;->lYearDays(I)I

    move-result v7

    .line 165
    int-to-long v8, v7

    sub-long/2addr v5, v8

    .line 166
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_4

    .line 169
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 170
    add-int/lit8 v1, v1, -0x1

    .line 171
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0xc

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 173
    :cond_4
    const/4 v8, 0x0

    int-to-long v9, v1

    aput-wide v9, v3, v8

    .line 174
    const/4 v8, 0x3

    add-int/lit16 v9, v1, -0x748

    int-to-long v9, v9

    aput-wide v9, v3, v8

    .line 175
    invoke-static {v1}, Lcom/meizu/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 176
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 178
    const/4 v1, 0x1

    :goto_1
    const/16 v8, 0xd

    if-ge v1, v8, :cond_8

    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_8

    .line 180
    if-lez v2, :cond_7

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_7

    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 181
    add-int/lit8 v1, v1, -0x1

    .line 182
    const/4 v8, 0x6

    const-wide/16 v9, 0x1

    aput-wide v9, v3, v8

    .line 183
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/meizu/util/LunarCalendar;->leapDays(I)I

    move-result v7

    .line 189
    :goto_2
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_5

    .line 190
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 191
    :cond_5
    int-to-long v8, v7

    sub-long/2addr v5, v8

    .line 192
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 193
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 178
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_7
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    long-to-int v8, v8

    invoke-static {v8, v1}, Lcom/meizu/util/LunarCalendar;->monthDays(II)I

    move-result v7

    goto :goto_2

    .line 196
    :cond_8
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_9

    if-lez v2, :cond_9

    add-int/lit8 v8, v2, 0x1

    if-ne v1, v8, :cond_9

    .line 197
    const/4 v8, 0x6

    aget-wide v8, v3, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 198
    const/4 v8, 0x6

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v8

    .line 205
    :cond_9
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_a

    .line 206
    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 207
    add-int/lit8 v1, v1, -0x1

    .line 208
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 210
    :cond_a
    const/4 v8, 0x1

    int-to-long v9, v1

    aput-wide v9, v3, v8

    .line 211
    const/4 v8, 0x2

    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    aput-wide v9, v3, v8

    .line 212
    return-object v3

    .line 200
    :cond_b
    const/4 v8, 0x6

    const-wide/16 v9, 0x1

    aput-wide v9, v3, v8

    .line 201
    add-int/lit8 v1, v1, -0x1

    .line 202
    const/4 v8, 0x4

    aget-wide v9, v3, v8

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    aput-wide v9, v3, v8

    goto :goto_3
.end method
