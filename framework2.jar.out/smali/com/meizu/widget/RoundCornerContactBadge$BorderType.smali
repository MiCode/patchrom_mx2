.class public final enum Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
.super Ljava/lang/Enum;
.source "RoundCornerContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RoundCornerContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/widget/RoundCornerContactBadge$BorderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field public static final enum BORDER_EDIT_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field public static final enum BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field public static final enum BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field public static final enum BORDER_SMALL_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field public static final enum BORDER_SMS_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

.field public static final enum BORDER_VIEW_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;


# instance fields
.field final borderTypeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    const-string v1, "BORDER_NULL"

    invoke-direct {v0, v1, v4, v4}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 147
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    const-string v1, "BORDER_LIST_CONTACT"

    invoke-direct {v0, v1, v5, v5}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 148
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    const-string v1, "BORDER_EDIT_CONTACT"

    invoke-direct {v0, v1, v6, v6}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 149
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    const-string v1, "BORDER_VIEW_CONTACT"

    invoke-direct {v0, v1, v7, v7}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 150
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    const-string v1, "BORDER_SMS_CONTACT"

    invoke-direct {v0, v1, v8, v8}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 151
    new-instance v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    const-string v1, "BORDER_SMALL_CONTACT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    .line 145
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_NULL:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->$VALUES:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput p3, p0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->borderTypeInt:I

    .line 155
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 145
    const-class v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    return-object v0
.end method

.method public static values()[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->$VALUES:[Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    invoke-virtual {v0}, [Lcom/meizu/widget/RoundCornerContactBadge$BorderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/widget/RoundCornerContactBadge$BorderType;

    return-object v0
.end method
