.class final Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;
.super Ljava/lang/Object;
.source "NbtAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/netbios/NbtAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheEntry"
.end annotation


# instance fields
.field address:Lmeizu_jcifs/netbios/NbtAddress;

.field expiration:J

.field hostName:Lmeizu_jcifs/netbios/Name;


# direct methods
.method constructor <init>(Lmeizu_jcifs/netbios/Name;Lmeizu_jcifs/netbios/NbtAddress;J)V
    .locals 0
    .parameter "hostName"
    .parameter "address"
    .parameter "expiration"

    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->hostName:Lmeizu_jcifs/netbios/Name;

    .line 164
    iput-object p2, p0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->address:Lmeizu_jcifs/netbios/NbtAddress;

    .line 165
    iput-wide p3, p0, Lmeizu_jcifs/netbios/NbtAddress$CacheEntry;->expiration:J

    .line 166
    return-void
.end method
