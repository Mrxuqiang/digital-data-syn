/*
================================================================================
��ṹ����:TB_PUBHD
��ṹ����:��Ʒ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHD;
drop index AK_TB_PUBHD;
drop table TB_PUBHD;
create table TB_PUBHD  (
   PUBHD_ID             INTEGER                         not null,  /*��ƷID            */
   PUBHD001             VARCHAR2(30)                    not null,  /*��Ʒ���          */
   PUBHD002             VARCHAR2(80)                    not null,  /*��Ʒȫ��          */
   PUBHD003             VARCHAR2(80)                    not null,  /*��Ʒ���          */
   PUBHD004             VARCHAR2(80),                              /*����ͺ�          */
   PUBHD005             INTEGER                         not null,  /*Ʒ��ID(ϵ��)   TB_PUBHB */
   PUBHD006             VARCHAR2(255),                             /*ͼƬ              */
   PUBHD007             INTEGER                         not null,  /*��Ʒ����ID   PUBHC  */
   PUBHD008             INTEGER,                                   /*�Զ������1ID PUBHG */
   PUBHD009             INTEGER,                                   /*�Զ������2ID     */
   PUBHD010             INTEGER,                                   /*�Զ������3ID     */
   PUBHD011             INTEGER,                                   /*�Զ������4ID     */
   PUBHD012             INTEGER,                                   /*�Զ������5ID     */
   PUBHD013             INTEGER,                                   /*�Զ������6ID     */
   PUBHD014             INTEGER,                                   /*�Զ������7ID     */
   PUBHD015             INTEGER,                                   /*�Զ������8ID     */
   PUBHD016             VARCHAR2(1),                               /*�Ƿ�����ά��1     */
   PUBHD017             VARCHAR2(1),                               /*�Ƿ�����ά��2     */
   PUBHD018             VARCHAR2(1),                               /*�Ƿ�����ά��3     */
   PUBHD019             VARCHAR2(1),                               /*�Ƿ�����ά��4     */
   PUBHD020             VARCHAR2(1),                               /*�Ƿ�����ά��5     */
   PUBHD021             INTEGER                         not null,  /*������λID        */
   PUBHD022             VARCHAR2(1)                     not null,  /*�׼�              */
   PUBHD023             INTEGER                         not null,  /*����˰ID    PUBGF */--���ֶν�������
   PUBHD025             INTEGER                         not null,  /*Ĭ���̻�ID  PUBGO */
   PUBHD026             VARCHAR2(80),                              /*����1       PUBHA */
   PUBHD027             VARCHAR2(80),                              /*����2             */
   PUBHD028             VARCHAR2(80),                              /*����3             */
   PUBHD024             INTEGER,                                   /*��ƿ�ĿID        */
   PUBHD029             VARCHAR2(80),                              /*����4             */
   PUBHD030             INTEGER,                                   /*ϵ��ID      PUBGG */
   PUBHD031             INTEGER,                                   /*�ȼ�ID      PUBGI */
   PUBHD032             VARCHAR2(80),                              /*���쳧��          */
   PUBHD033             VARCHAR2(100),                              /*����              */
   PUBHD034             VARCHAR2(60),                              /*���칤��          */
   PUBHD035             VARCHAR2(256),                             /*��Ҫ����          */--20110711 modify by xiechun  VARCHAR2(256)
   PUBHD036             NUMBER(12,2),                              /*����              */--20110711 modify by xiechun  ����
   PUBHD037             NUMBER(12,2),                              /*��                */
   PUBHD038             NUMBER(12,2),                              /*��                */
   PUBHD039             NUMBER(12,2),                              /*��                */
   PUBHD040             NUMBER(12,2)                    not null,  /*���ۼ�            */
   PUBHD041             NUMBER(12,2)                    not null,  /*����ۼ�          */
   PUBHD042             VARCHAR2(1),                               /*�ɶ���(�Ƿ�����ʵ��)*/--mark
   PUBHD043             VARCHAR2(1),                               /*�ɶ���            */
   PUBHD044             VARCHAR2(1),                               /*������            */--mark
   PUBHD045             VARCHAR2(1),                               /*������            */--mark
   PUBHD046             VARCHAR2(1),                               /*�������˻�        */
   PUBHD047             VARCHAR2(1),                               /*�ɲɹ��˻�        */
   PUBHD048             INTEGER,                                   /*���ֿ�            */   modi by licf
   PUBHD049             VARCHAR2(1),                               /*��װ��            */--modi by hansf 
   PUBHD050            VARCHAR2(1),                                /*�Ƿ���Ʒ          */--add by hansf
   PUBHD051            VARCHAR2(1),                                /*�ɶ�������        */--modi by hansf
   PUBHD052            NUMBER(12,2)                             ,  /*��˰����          */ 
   PUBHD053            NUMBER(12,2)                   ,            /*˰ǰ�۸�          */ 
   PUBHD054            NUMBER(12,0)                   ,            /*����              */ --mark �����������ظ���
   PUBHD055            NUMBER(12,0)                   ,            /*����              */ --mark
   PUBHD056            VARCHAR2(255),                              /*��ע              */--add by hansf
   PUBHD057            NUMBER(12,2),                               /*Ĭ�Ϲ�������      */--add by hansf
   PUBHD058            NUMBER(12,2),                               /*Ĭ���ض���������  */--add by hansf
  PUBHD059            VARCHAR2(1),                                 /*�Ƿ�ɶ�          */
  PUBHD060            VARCHAR2(1),                                 /*�Ƿ����          */
  PUBHD061            VARCHAR2(1),                                 /*�Ƿ����          */
  PUBHD062            VARCHAR2(1),                                 /*��Ʒ״̬          */ --modify by xiechun 0.��Ч1.��Ч2.�����
  PUBHD063            VARCHAR2(1),                                 /*��POS��           */
  PUBHD064            VARCHAR2(1),                                 /*�������          */--20110729 modfiy by xiechun �������0.�ǵ�Ʒ����1.��Ʒ����2.�̶��� 
  PUBHD065            VARCHAR2(60),                                /*����              */ --add by ouwx 20100819
  PUBHD066            VARCHAR2(60),                                /*����              */ --add by ouwx 20100819
  PUBHD067            VARCHAR2(60),                                /*����              */ --add by ouwx 20100819
  PUBHD068            number(22,0),                                /*���׼���          */ --add by ouwx 20100819
  PUBHD069            NUMBER(22,2),                                /*������            */ --add by xiechun 20101218
  PUBHD070            VARCHAR2(1),                                 /*�Ƿ�����ɹ�      */ --add by xiechun 20110113
  PUBHD071             NUMBER(12,2),                               /*ë��              */--20110711 modify by xiechun  ë��
  PUBHD072             NUMBER(12,3),                               /*��װ���          */--20110711 modify by xiechun 
  PUBHD073             NUMBER(12,2),                               /*��Ʒ��            */--20110721 add by xiechun
  PUBHD074             NUMBER(12,2),                               /*��Ʒ��            */--20110721 add by xiechun
  PUBHD075             NUMBER(12,2),                               /*��Ʒ��            */--20110721 add by xiechun
  PUBHD076             NUMBER(12,3),                               /*��Ʒ���          */--20110721 modify by xiechun
  PUBHD077             NUMBER(12,3),                               /*��Ʒռ�����      */--20110721 modify by xiechun					
  PUBHD078             INTEGER                                  ,  /*һ����װ          */--20111019 add by xiechun
  PUBHD079             NUMBER(12,2)                             ,  /*һ������ϵ��      */--20111019 add by xiechun  
  PUBHD080             INTEGER                                  ,  /*������װ          */--20111019 add by xiechun
  PUBHD081             NUMBER(12,2)                             ,  /*��������ϵ��      */--20111019 add by xiechun
  PUBHD082             INTEGER                                  ,  /*������װ          */--20111019 add by xiechun
  PUBHD083             NUMBER(12,2)                             ,  /*��������ϵ��      */--20111019 add by xiechun
  PUBHD084             VARCHAR2(32)                             ,  /*������λ����      */--20111019 add by xiechun
  PUBHD085             VARCHAR2(32)                             ,  /*һ����װ����      */--20111019 add by xiechun
  PUBHD086             VARCHAR2(32)                             ,  /*������װ����      */--20111019 add by xiechun
  PUBHD087             VARCHAR2(32)                             ,  /*������װ����      */--20111019 add by xiechun
  PUBHD088             VARCHAR2(20),                               /*���Ա            */--20111119 add by gaoxl 
  PUBHD089             NUMBER(12,2)                             ,  /*һ���������λ����ϵ��      */--20111125 add by xiechun
  PUBHD090             NUMBER(12,2)                             ,  /*�����������λ����ϵ��      */--20111125 add by xiechun
  PUBHD091             NUMBER(12,2)                             ,  /*�����������λ����ϵ��      */--20111125 add by xiechun
  PUBHD092             VARCHAR2(32)                             ,  /*��������ˮ��      */--20111130 add by xiechun
  PUBHD093             VARCHAR2(32)                             ,  /*��Ʒ��ˮ��        */--20111130 add by xiechun
  PUBHD094             VARCHAR2(80)                             ,  /*Ӣ��Ʒ��          */-20111228 add by xiechun 
  PUBHD095             DATE,                                       /*��������          */--20111231 add by xiechun
  PUBHD097             VARCHAR2(1),                                /*���λ          */
  CREATE_USER          VARCHAR2(12),                              /*������Ա           */
  USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
  CREATE_DATE          DATE,                                      /*��������           */
  MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
  MODI_DATE            DATE,                                      /*�޸�����           */
  FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBHD primary key (PUBHD_ID)
);
create unique index AK_TB_PUBHD on TB_PUBHD (PUBHD001,FALG);
create sequence SEQ_TB_PUBHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHD to public;
grant index  on TB_PUBHD to public;
grant update on TB_PUBHD to public; 
grant delete on TB_PUBHD to public;  
grant insert on TB_PUBHD to public; 
grant select on SEQ_TB_PUBHD to public;   