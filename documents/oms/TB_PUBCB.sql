/* 20120927 add by gaoxl for crmi053 �޸�Ӫ����֯��ƣ���˾id������id������id������id��ʡ��id������id���Զ�����ǰ���룬Ӫ����֯���Ϊ�ɿ��ֶ�
   20130704 add by gaoxl for ���ǣ����Ӵ�����С���ֶ�
*/
/*
================================================================================
��ṹ����:TB_PUBCB
��ṹ����:Ӫ����֯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBCB;
drop index AK_TB_PUBCB;
drop table TB_PUBCB;
create table TB_PUBCB  (
   PUBCB_ID             INTEGER                         not null,  /*Ӫ����֯ID         */
   PUBCB001             VARCHAR2(16)                    not null,  /*Ӫ����֯����       */
   PUBCB002             VARCHAR2(20),                              /*Ӫ����֯���       */
   PUBCB003             VARCHAR2(80)                    not null,  /*Ӫ����֯ȫ��       */
   PUBCB004             INTEGER,                                   /*�ϼ�Ӫ����֯ID     */   
   PUBCB005             INTEGER,                                   /*��˾ID             */
   PUBCB006             INTEGER,                                   /*��Ӫ����ID         */
   PUBCB007             VARCHAR2(1)                     not null,  /*Ӫ��״��           */
   PUBCB008             DATE                            not null,  /*��ҵ����           */
   PUBCB009             DATE,                                      /*ͣ������           */
   PUBCB010             INTEGER,                                   /*����ID             */
   PUBCB011             INTEGER,                                   /*����ID             */
   PUBCB012             INTEGER,                                   /*����ID             */
   PUBCB013             INTEGER,                                   /*ʡ��ID             */
   PUBCB014             INTEGER,                                   /*����ID             */
   PUBCB015             INTEGER,                                   /*����ID             */
   PUBCB016             VARCHAR2(10),                              /*��������           */
   PUBCB017             VARCHAR2(255),                             /*��˾��ַ           */  
   PUBCB018             INTEGER,                                   /*������ID           */
   PUBCB019             INTEGER,                                   /*��ϵ��ID           */
   PUBCB020             VARCHAR2(10),                              /*�ʼ��ʱ�           */
   PUBCB021             VARCHAR2(255),                             /*�ʼĵ�ַ           */
   PUBCB022             VARCHAR2(60),                              /*�ʼ�����           */
   PUBCB023             VARCHAR2(30),                              /*�绰               */
   PUBCB024             VARCHAR2(30),                              /*����               */  
   PUBCB025             VARCHAR2(30),                              /*�ƶ��绰           */
   PUBCB026             VARCHAR2(60),                              /*E_Mail             */
   PUBCB027             VARCHAR2(60),                              /*��˾��ַ           */   
   PUBCB028             NUMBER(12,2),                              /*Ӫ����֯���       */
   PUBCB029             VARCHAR2(255),                             /*��ע               */
   PUBCB030             VARCHAR2(3),                               /*�Զ�����ǰ����     */
   PUBCB031             INTEGER,                                   /*Ӫ����֯����ID     */
   PUBCB032             VARCHAR2(30),                              /*��ǰ�㼶����       */
   PUBCB033             INTEGER,                                   /*���տ˾ID       */
   PUBCB034             INTEGER,                                   /*��Ӧ����ID         */  
   PUBCB035             VARCHAR2(1),                               /*�Ƿ�ʵ���         */
   PUBCB036             INTEGER,                                   /*��������add by hansf 20101012 */
   PUBCB037             INTEGER,                                   /*������Ʊ��˾ID     */  
   PUBCB038             INTEGER,                                   /*��������           */ 
   PUBCB039             INTEGER,                                   /*С������           */   
   PUBCB040             VARCHAR2(1),                               /*�Ƿ񹤳�           */  
   PUBCB041             VARCHAR2(2),                               /*��������           */     
   ISLASTLEV            VARCHAR2(1),                               /*�Ƿ�ĩ��           */
   LEVNUM               NUMBER(1),                                 /*�㼶               */
   PARCODE              VARCHAR2(40),                              /*��������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBCB primary key (PUBCB_ID)
);
create unique index AK_TB_PUBCB on TB_PUBCB (PUBCB001);
create sequence SEQ_TB_PUBCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCB to public;
grant index  on TB_PUBCB to public;
grant update on TB_PUBCB to public; 
grant delete on TB_PUBCB to public;  
grant insert on TB_PUBCB to public; 
grant select on SEQ_TB_PUBCB to public;   