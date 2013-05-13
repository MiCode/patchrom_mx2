.class final enum Landroid/text/StaticLayout$LineBreakClass;
.super Ljava/lang/Enum;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LineBreakClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/text/StaticLayout$LineBreakClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/text/StaticLayout$LineBreakClass;

.field public static final enum IDEOGRAPHIC:Landroid/text/StaticLayout$LineBreakClass;

.field public static final enum NONE:Landroid/text/StaticLayout$LineBreakClass;

.field public static final enum OTHER:Landroid/text/StaticLayout$LineBreakClass;

.field public static final enum SPACE:Landroid/text/StaticLayout$LineBreakClass;

.field public static final enum XBREAK:Landroid/text/StaticLayout$LineBreakClass;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 626
    new-instance v0, Landroid/text/StaticLayout$LineBreakClass;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid/text/StaticLayout$LineBreakClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$LineBreakClass;->NONE:Landroid/text/StaticLayout$LineBreakClass;

    .line 627
    new-instance v0, Landroid/text/StaticLayout$LineBreakClass;

    const-string v1, "XBREAK"

    invoke-direct {v0, v1, v3}, Landroid/text/StaticLayout$LineBreakClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$LineBreakClass;->XBREAK:Landroid/text/StaticLayout$LineBreakClass;

    .line 628
    new-instance v0, Landroid/text/StaticLayout$LineBreakClass;

    const-string v1, "SPACE"

    invoke-direct {v0, v1, v4}, Landroid/text/StaticLayout$LineBreakClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$LineBreakClass;->SPACE:Landroid/text/StaticLayout$LineBreakClass;

    .line 629
    new-instance v0, Landroid/text/StaticLayout$LineBreakClass;

    const-string v1, "IDEOGRAPHIC"

    invoke-direct {v0, v1, v5}, Landroid/text/StaticLayout$LineBreakClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$LineBreakClass;->IDEOGRAPHIC:Landroid/text/StaticLayout$LineBreakClass;

    .line 630
    new-instance v0, Landroid/text/StaticLayout$LineBreakClass;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Landroid/text/StaticLayout$LineBreakClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/text/StaticLayout$LineBreakClass;->OTHER:Landroid/text/StaticLayout$LineBreakClass;

    .line 625
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/text/StaticLayout$LineBreakClass;

    sget-object v1, Landroid/text/StaticLayout$LineBreakClass;->NONE:Landroid/text/StaticLayout$LineBreakClass;

    aput-object v1, v0, v2

    sget-object v1, Landroid/text/StaticLayout$LineBreakClass;->XBREAK:Landroid/text/StaticLayout$LineBreakClass;

    aput-object v1, v0, v3

    sget-object v1, Landroid/text/StaticLayout$LineBreakClass;->SPACE:Landroid/text/StaticLayout$LineBreakClass;

    aput-object v1, v0, v4

    sget-object v1, Landroid/text/StaticLayout$LineBreakClass;->IDEOGRAPHIC:Landroid/text/StaticLayout$LineBreakClass;

    aput-object v1, v0, v5

    sget-object v1, Landroid/text/StaticLayout$LineBreakClass;->OTHER:Landroid/text/StaticLayout$LineBreakClass;

    aput-object v1, v0, v6

    sput-object v0, Landroid/text/StaticLayout$LineBreakClass;->$VALUES:[Landroid/text/StaticLayout$LineBreakClass;

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
    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/text/StaticLayout$LineBreakClass;
    .locals 1
    .parameter "name"

    .prologue
    .line 625
    const-class v0, Landroid/text/StaticLayout$LineBreakClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$LineBreakClass;

    return-object v0
.end method

.method public static values()[Landroid/text/StaticLayout$LineBreakClass;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Landroid/text/StaticLayout$LineBreakClass;->$VALUES:[Landroid/text/StaticLayout$LineBreakClass;

    invoke-virtual {v0}, [Landroid/text/StaticLayout$LineBreakClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/StaticLayout$LineBreakClass;

    return-object v0
.end method
