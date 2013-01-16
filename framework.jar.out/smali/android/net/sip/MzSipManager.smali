.class public Landroid/net/sip/MzSipManager;
.super Ljava/lang/Object;
.source "MzSipManager.java"


# static fields
.field public static final REGISTER_EXPITY_TIME:I = 0xe10

.field public static final SUBSCRIBE_EXPITY_TIME:I = 0xe10

.field static final TAG:Ljava/lang/String; = "MzSipManager"

.field private static final THREAD_POOL_SIZE:Ljava/lang/String; = "1"

.field public static final UNSUBSCRIBE_EXPITY_TIME:I

.field public static mMzSipManager:Landroid/net/sip/MzSipManager;

.field private static mSipManager:Landroid/net/sip/SipManager;


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mServerDomain:Ljava/lang/String;

.field private mServerPort:I

.field public mSipProfile:Landroid/net/sip/SipProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    .line 37
    sput-object v0, Landroid/net/sip/MzSipManager;->mMzSipManager:Landroid/net/sip/MzSipManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/net/sip/MzSipManager;->mServerDomain:Ljava/lang/String;

    .line 40
    const/16 v0, 0x6ae

    iput v0, p0, Landroid/net/sip/MzSipManager;->mServerPort:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/MzSipManager;->DEBUG:Z

    .line 54
    iput-object p1, p0, Landroid/net/sip/MzSipManager;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 56
    return-void
.end method

.method public static getInstanse(Landroid/content/Context;)Landroid/net/sip/MzSipManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    sget-object v0, Landroid/net/sip/MzSipManager;->mMzSipManager:Landroid/net/sip/MzSipManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/net/sip/MzSipManager;

    invoke-direct {v0, p0}, Landroid/net/sip/MzSipManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/net/sip/MzSipManager;->mMzSipManager:Landroid/net/sip/MzSipManager;

    .line 50
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mMzSipManager:Landroid/net/sip/MzSipManager;

    return-object v0
.end method

.method private getStackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initSipProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "username"
    .parameter "password"

    .prologue
    .line 276
    iget-object v2, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    if-nez v2, :cond_0

    .line 279
    :try_start_0
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->getServerDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v0, builder:Landroid/net/sip/SipProfile$Builder;
    invoke-virtual {v0, p2}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 282
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    .line 283
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->getServerPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 284
    const-string v2, "TLS"

    invoke-virtual {v0, v2}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->getServerDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 286
    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v2

    iput-object v2, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 290
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MzSipManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSipProfile fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSipLogEnable()Z
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Landroid/net/sip/MzSipManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 66
    iget-boolean v1, p0, Landroid/net/sip/MzSipManager;->DEBUG:Z

    .line 73
    :goto_0
    return v1

    .line 68
    :cond_0
    iget-object v1, p0, Landroid/net/sip/MzSipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_sip_log"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, sipLogFlag:I
    if-lez v0, :cond_1

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget-boolean v1, p0, Landroid/net/sip/MzSipManager;->DEBUG:Z

    goto :goto_0
.end method


# virtual methods
.method public CloseLocalProfile()V
    .locals 4

    .prologue
    .line 178
    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    :try_start_0
    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v2, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/net/sip/SipException;
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MzSipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseLocalProfile fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public InitializeLocalProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 174
    :cond_0
    return-void
.end method

.method public InitializeLocalProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "username"
    .parameter "password"
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 111
    sget-object v3, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    :try_start_0
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v0, p1, p3}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v0, builder:Landroid/net/sip/SipProfile$Builder;
    invoke-virtual {v0, p2}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 122
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    .line 123
    invoke-virtual {v0, p4}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 124
    const-string v3, "TLS"

    invoke-virtual {v0, v3}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v3

    iput-object v3, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    .line 126
    sget-object v3, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    iget-object v4, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    const/16 v5, 0xe10

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/sip/SipManager;->register(Landroid/net/sip/SipProfile;ILandroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    .end local v0           #builder:Landroid/net/sip/SipProfile$Builder;
    :catch_0
    move-exception v2

    .line 129
    .local v2, se:Landroid/net/sip/SipException;
    throw v2

    .line 130
    .end local v2           #se:Landroid/net/sip/SipException;
    :catch_1
    move-exception v1

    .line 132
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 133
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MzSipManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InitializeLocalProfile ParseException!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public InitializeManager()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Landroid/net/sip/MzSipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    sput-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    .line 63
    :cond_0
    return-void
.end method

.method public autoRegisterNotify(Ljava/lang/String;Ljava/lang/String;Landroid/net/sip/SipSessionListener;)V
    .locals 7
    .parameter "username"
    .parameter "password"
    .parameter "listener"

    .prologue
    .line 299
    :try_start_0
    sget-object v4, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v4, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 302
    :cond_0
    iget-object v4, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    if-nez v4, :cond_1

    .line 303
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->getServerDomain()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v0, builder:Landroid/net/sip/SipProfile$Builder;
    invoke-virtual {v0, p2}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 306
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    .line 307
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->getServerPort()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 308
    const-string v4, "TLS"

    invoke-virtual {v0, v4}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->getServerDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 310
    invoke-virtual {v0, p1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    .line 311
    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v4

    iput-object v4, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    .line 313
    .end local v0           #builder:Landroid/net/sip/SipProfile$Builder;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v2, i:Landroid/content/Intent;
    const-string v4, "com.meizu.sip.INCOMING_CALL"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v4, p0, Landroid/net/sip/MzSipManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 316
    .local v3, pi:Landroid/app/PendingIntent;
    sget-object v4, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    iget-object v5, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v4, v5, v3, p3}, Landroid/net/sip/SipManager;->setAutoRegisterAndNotify(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipSessionListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 329
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :cond_2
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 319
    .local v1, e:Landroid/net/sip/SipException;
    invoke-virtual {v1}, Landroid/net/sip/SipException;->printStackTrace()V

    .line 320
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MzSipManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoRegisterNotify SipException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v1           #e:Landroid/net/sip/SipException;
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 324
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MzSipManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoRegisterNotify ParseException!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v1           #e:Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 326
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MzSipManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoRegisterNotify Exception!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 190
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    iget-object v1, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipManager;->close(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/MzSipManager;->mSipProfile:Landroid/net/sip/SipProfile;

    goto :goto_0
.end method

.method public getServerDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/net/sip/MzSipManager;->mServerDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Landroid/net/sip/MzSipManager;->mServerPort:I

    return v0
.end method

.method public getSipManager()Landroid/net/sip/SipManager;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method public isRegister()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 94
    :try_start_0
    sget-object v2, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    sget-object v2, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v3, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v3}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/sip/SipManager;->isRegistered(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/net/sip/SipException;
    invoke-virtual {v0}, Landroid/net/sip/SipException;->printStackTrace()V

    .line 104
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MzSipManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRegistered Fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;
    .locals 2
    .parameter "peerProfile"
    .parameter "listener"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 345
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 349
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sipprofile cannot be null, be sure registered?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;

    move-result-object v0

    return-object v0
.end method

.method public sendSipSms(Ljava/lang/String;Ljava/lang/String;ZLandroid/net/sip/SipSessionListener;)V
    .locals 6
    .parameter "smsJson"
    .parameter "smsUUID"
    .parameter "report"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 336
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sipprofile cannot be null, be sure registered?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/net/sip/SipManager;->sendMessage(Landroid/net/sip/SipProfile;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/sip/SipSessionListener;)V

    .line 341
    return-void
.end method

.method public setNotifyListener(Ljava/lang/String;Landroid/net/sip/SipSessionListener;)V
    .locals 1
    .parameter "localProfileUri"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 455
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/sip/SipManager;->setNotifyListener(Ljava/lang/String;Landroid/net/sip/SipSessionListener;)V

    .line 457
    return-void
.end method

.method public setServerDomain(Ljava/lang/String;)V
    .locals 0
    .parameter "domain"

    .prologue
    .line 260
    iput-object p1, p0, Landroid/net/sip/MzSipManager;->mServerDomain:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 264
    iput p1, p0, Landroid/net/sip/MzSipManager;->mServerPort:I

    .line 265
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/net/sip/SipSessionListener;)V
    .locals 3
    .parameter "pushNode"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 238
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sipprofile cannot be null, be sure registered?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    const/16 v2, 0xe10

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/sip/SipManager;->subscribe(Landroid/net/sip/SipProfile;ILjava/lang/String;Landroid/net/sip/SipSessionListener;)V

    .line 244
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/net/sip/SipSubscribeListener;)V
    .locals 3
    .parameter "pushNode"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 202
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sipprofile cannot be null, be sure registered?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    const/16 v2, 0xe10

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/sip/SipManager;->subscribe(Landroid/net/sip/SipProfile;ILjava/lang/String;Landroid/net/sip/SipSubscribeListener;)V

    .line 218
    return-void
.end method

.method public unSubscribe(Ljava/lang/String;Landroid/net/sip/SipSessionListener;)V
    .locals 3
    .parameter "pushNode"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 251
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sipprofile cannot be null, be sure registered?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/sip/SipManager;->subscribe(Landroid/net/sip/SipProfile;ILjava/lang/String;Landroid/net/sip/SipSessionListener;)V

    .line 257
    return-void
.end method

.method public unSubscribe(Ljava/lang/String;Landroid/net/sip/SipSubscribeListener;)V
    .locals 3
    .parameter "pushNode"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/net/sip/MzSipManager;->InitializeManager()V

    .line 225
    :cond_0
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v0}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "sipprofile cannot be null, be sure registered?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    sget-object v0, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v1}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/sip/SipManager;->subscribe(Landroid/net/sip/SipProfile;ILjava/lang/String;Landroid/net/sip/SipSubscribeListener;)V

    .line 231
    return-void
.end method

.method public unregister()V
    .locals 4

    .prologue
    .line 80
    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    sget-object v1, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    sget-object v2, Landroid/net/sip/MzSipManager;->mSipManager:Landroid/net/sip/SipManager;

    invoke-virtual {v2}, Landroid/net/sip/SipManager;->getMzRegisterProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/sip/SipManager;->unregister(Landroid/net/sip/SipProfile;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Landroid/net/sip/SipException;
    invoke-virtual {v0}, Landroid/net/sip/SipException;->printStackTrace()V

    .line 88
    invoke-direct {p0}, Landroid/net/sip/MzSipManager;->isSipLogEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MzSipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister Fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
