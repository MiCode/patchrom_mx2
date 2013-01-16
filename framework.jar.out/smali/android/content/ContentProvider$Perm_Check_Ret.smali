.class public final enum Landroid/content/ContentProvider$Perm_Check_Ret;
.super Ljava/lang/Enum;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Perm_Check_Ret"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/ContentProvider$Perm_Check_Ret;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/ContentProvider$Perm_Check_Ret;

.field public static final enum Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

.field public static final enum Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

.field public static final enum Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Landroid/content/ContentProvider$Perm_Check_Ret;

    const-string v1, "Accept"

    invoke-direct {v0, v1, v2}, Landroid/content/ContentProvider$Perm_Check_Ret;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    new-instance v0, Landroid/content/ContentProvider$Perm_Check_Ret;

    const-string v1, "Limited"

    invoke-direct {v0, v1, v3}, Landroid/content/ContentProvider$Perm_Check_Ret;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    new-instance v0, Landroid/content/ContentProvider$Perm_Check_Ret;

    const-string v1, "Unknow"

    invoke-direct {v0, v1, v4}, Landroid/content/ContentProvider$Perm_Check_Ret;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/ContentProvider$Perm_Check_Ret;

    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Accept:Landroid/content/ContentProvider$Perm_Check_Ret;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Limited:Landroid/content/ContentProvider$Perm_Check_Ret;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/ContentProvider$Perm_Check_Ret;->Unknow:Landroid/content/ContentProvider$Perm_Check_Ret;

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->$VALUES:[Landroid/content/ContentProvider$Perm_Check_Ret;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 1
    .parameter "name"

    .prologue
    .line 175
    const-class v0, Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider$Perm_Check_Ret;

    return-object v0
.end method

.method public static values()[Landroid/content/ContentProvider$Perm_Check_Ret;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Landroid/content/ContentProvider$Perm_Check_Ret;->$VALUES:[Landroid/content/ContentProvider$Perm_Check_Ret;

    invoke-virtual {v0}, [Landroid/content/ContentProvider$Perm_Check_Ret;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentProvider$Perm_Check_Ret;

    return-object v0
.end method
