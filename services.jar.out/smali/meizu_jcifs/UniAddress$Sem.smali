.class Lmeizu_jcifs/UniAddress$Sem;
.super Ljava/lang/Object;
.source "UniAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/UniAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sem"
.end annotation


# instance fields
.field count:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lmeizu_jcifs/UniAddress$Sem;->count:I

    .line 123
    return-void
.end method
