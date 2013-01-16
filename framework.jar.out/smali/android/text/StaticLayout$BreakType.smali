.class final enum Landroid/text/StaticLayout$BreakType;
.super Ljava/lang/Enum;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BreakType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/StaticLayout$BreakType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/StaticLayout$BreakType;

.field public static final enum CH:Landroid/text/StaticLayout$BreakType;

.field public static final enum EN:Landroid/text/StaticLayout$BreakType;

.field public static final enum NONE:Landroid/text/StaticLayout$BreakType;

.field public static final enum SYM:Landroid/text/StaticLayout$BreakType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    new-instance v0, Landroid/text/StaticLayout$BreakType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid/text/StaticLayout$BreakType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    .line 634
    new-instance v0, Landroid/text/StaticLayout$BreakType;

    const-string v1, "SYM"

    invoke-direct {v0, v1, v3}, Landroid/text/StaticLayout$BreakType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$BreakType;->SYM:Landroid/text/StaticLayout$BreakType;

    .line 635
    new-instance v0, Landroid/text/StaticLayout$BreakType;

    const-string v1, "EN"

    invoke-direct {v0, v1, v4}, Landroid/text/StaticLayout$BreakType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$BreakType;->EN:Landroid/text/StaticLayout$BreakType;

    .line 636
    new-instance v0, Landroid/text/StaticLayout$BreakType;

    const-string v1, "CH"

    invoke-direct {v0, v1, v5}, Landroid/text/StaticLayout$BreakType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$BreakType;->CH:Landroid/text/StaticLayout$BreakType;

    .line 632
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/text/StaticLayout$BreakType;

    sget-object v1, Landroid/text/StaticLayout$BreakType;->NONE:Landroid/text/StaticLayout$BreakType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/text/StaticLayout$BreakType;->SYM:Landroid/text/StaticLayout$BreakType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/text/StaticLayout$BreakType;->EN:Landroid/text/StaticLayout$BreakType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/text/StaticLayout$BreakType;->CH:Landroid/text/StaticLayout$BreakType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/text/StaticLayout$BreakType;->$VALUES:[Landroid/text/StaticLayout$BreakType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/StaticLayout$BreakType;
    .locals 1
    .parameter "name"

    .prologue
    .line 632
    const-class v0, Landroid/text/StaticLayout$BreakType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$BreakType;

    return-object v0
.end method

.method public static values()[Landroid/text/StaticLayout$BreakType;
    .locals 1

    .prologue
    .line 632
    sget-object v0, Landroid/text/StaticLayout$BreakType;->$VALUES:[Landroid/text/StaticLayout$BreakType;

    invoke-virtual {v0}, [Landroid/text/StaticLayout$BreakType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/StaticLayout$BreakType;

    return-object v0
.end method
