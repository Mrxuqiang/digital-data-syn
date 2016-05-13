/*
================================================================================
��ṹ����:TB_CONCA
��ṹ����:��ͬ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCA;
drop index AK_TB_CONCA;
drop table TB_CONCA;
create table TB_CONCA  (
   CONCA_ID             INTEGER                         not null,  /*��ͬ���ID          */
   CONCA001             INTEGER                         not null,  /*��˾ID              */
   CONCA002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONCA003             INTEGER                         not null,  /*��ͬID              */
   CONCA004             NUMBER(6,1)                     not null,  /*�汾��              */
   CONCA005             DATE                            not null,  /*ǩ������            */
   CONCA006             VARCHAR2(30)                    not null,  /*�Է�ǩԼ��          */
   CONCA007             INTEGER                         not null,  /*��ͬ����ID          */
   CONCA008             INTEGER                         not null,  /*��Ӫ�̻�ID          */
   CONCA009             INTEGER                         not null,  /*�����̻�ID          */
   CONCA010             INTEGER                         not null,  /*̯λID              */
   CONCA011             DATE                            not null,  /*��������            */ #modify ouwx 2010/2/26
   CONCA012             DATE                            not null,  /*����ֹ��            */
   CONCA013             INTEGER                         not null,  /*���ʽID          */
   CONCA014             INTEGER,                                   /*չ�ʵ�ID            */
   CONCA015             NUMBER(5),                                 /*��ǰ�տ�����        */
   CONCA016             VARCHAR2(1),                               /*�Ƿ������          */
   CONCA017             VARCHAR2(1),                               /*POSʹ�÷�ʽ         */
   CONCA018             INTEGER,                                   /*���ʽID          */
   CONCA019             NUMBER(5),                                 /*��������(��)        */
   CONCA020             NUMBER(12,2),                              /*���ɽ���            */
   CONCA021             INTEGER,                                   /*��ǩ������ͬID      */
   CONCA022             INTEGER                         not null,  /*ҵ����ԱID          */
   CONCA023             VARCHAR2(255),                             /*��ע                */
   CONCA024             DATE,                                      /*��ֹ����            */
   CONCA025             VARCHAR2(1)                     not null,  /*״̬                */
   CONCA026             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONCA027             VARCHAR2(30),                              /*ǩ�˵���            */
   CONCA028             VARCHAR2(1),                               /*ǩ����              */
   CONCA029             INTEGER,                                   /*¼����ID            */
   CONCA030             DATE,                                      /*¼������            */
   CONCA031             INTEGER,                                   /*�����ID            */
   CONCA032             DATE,                                      /*�������            */
   CONCA033             VARCHAR2(80),                              /*�̻�ȫ��            */
   CONCA034             VARCHAR2(30),                              /*������              */
   CONCA035             VARCHAR2(30),                              /*�����˵绰          */
   CONCA036             VARCHAR2(30),                              /*����                */
   CONCA037             VARCHAR2(20),                              /*��˰�˵ǼǺ�        */
   CONCA038             INTEGER                         not null,  /*��Ӫ����ID          */
   CONCA039             INTEGER                         not null,  /*��Ӫ����ID          */
   CONCA040             INTEGER                         not null,  /*��ӪС��ID          */
   CONCA041             INTEGER                         not null,  /*Ʒ��ϵ��ID            */
   CONCA042             INTEGER,                                   /*�����ID            */
   CONCA043             DATE,                                      /*�������            */
   CONCA044             DATE,                                      /*�����Ч��          */
   CONCA045             INTEGER,                                   /*���ԭ��ID          */
   CONCA046             VARCHAR2(80),                              /*�ĵ����            */
   CONCA047             VARCHAR2(1)                     not null,  /*̯λ����            */
   CONCA048             INTEGER                         not null,  /*ҵ����ID          */
   CONCA049             VARCHAR2(60),                              /*ǩԼ�ص�            */
   CONCA050             INTEGER                         not null,  /*¥��ID              */
   CONCA051             INTEGER                         not null,  /*¥��ID              */
   CONCA052             VARCHAR2(30)                    not null,  /*��ͬ��              */
   CONCA053             DATE                                       /*��������            */ #modify ouwx 2010/2/26
   CONCA054             NUMBER(5),                                 /*�Զ�����(��)        */  add ouwx 2010/12/05
   CONCA055             NUMBER(5),                                 /*��ǰ��������        */  add ouwx 2010/12/05
   CONCA056             DATE,					   /*�������ִ����      */  add ouwx 2010/12/05
   CONCA057             VARCHAR2(400),                             /*�������            */  add ouwx 2011/12/21
   CONCA058             VARCHAR2(800),                             /*���˵��            */  add ouwx 2011/12/21
   CONCA059             INTEGER,                                   /*��ͬ�ȼ�ID          */  add ouwx 2012/02/14   
   CONCA060             VARCHAR2(40),                              /*��Ӫ���̼��        */  add ouwx 2012/04/09   
   CONCA061             VARCHAR2(40),                              /*������̼��        */  add ouwx 2012/04/09 
   CONCA062             INTEGER,                                   /*��������id          */  20120619 add by gaoxl   

   CONCA063             INTEGER                         not null,  /*Ʒ��ID              */
   CONCA064             DATE                            not null,  /*��ֹʱ��            */
   CONCA065             NUMBER(22,2),                              /*��ͬ����            */ 
   CONCA066             VARCHAR2(30),                              /*��˾����            */
   CONCA067             VARCHAR2(60),                             /*���ⷽע���ַ����סַ��            */
   CONCA068             VARCHAR2(30),                             /*���ⷽ���������ˣ������ˣ�            */
   CONCA069             VARCHAR2(30),                             /*���ⷽ���֤���루��֯��������֤��            */
   CONCA070             VARCHAR2(30),                             /*���ⷽ���������ˣ������ˣ�-��ϵ��ʽ            */
   CONCA071             VARCHAR2(30),                             /*���ⷽ��ϵ����            */
   CONCA072             VARCHAR2(60),                             /*���ⷽ��ϵ��ַ            */
   CONCA073             VARCHAR2(30),                             /*���ⷽ��ϵ�绰            */
   CONCA074             VARCHAR2(60),                             /*������ע���ַ����סַ��            */
   CONCA075             VARCHAR2(30),                             /*���������������ˣ������ˣ�            */
   CONCA076             VARCHAR2(30),                             /*���������֤���루��֯��������֤��            */
   CONCA077             VARCHAR2(30),                             /*���������������ˣ������ˣ�-��ϵ��ʽ            */
   CONCA078             VARCHAR2(30),                             /*���ⷽ��Ȩ����ί�д�ǩ�ˣ�            */
   CONCA079             VARCHAR2(30),                             /*���ⷽ��Ȩ����ί�д�ǩ�ˣ����֤            */
   CONCA080             VARCHAR2(30),                  not null,  /*��ҵ����             */
   CONCA081             VARCHAR2(13),                             /*SAP��ͬ��            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   constraint PK_TB_CONCA primary key (CONCA_ID)
);
create unique index AK_TB_CONCA on TB_CONCA (CONCA002,CONCA003,CONCA004);
create sequence SEQ_TB_CONCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCA to public;
grant index  on TB_CONCA to public;
grant update on TB_CONCA to public; 
grant delete on TB_CONCA to public;  
grant insert on TB_CONCA to public; 
grant select on SEQ_TB_CONCA to public;   