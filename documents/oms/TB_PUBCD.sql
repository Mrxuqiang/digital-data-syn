/*
20130816 add by gaoxl for ���ǣ�add PUBCD039~PUBCD040
*/


/*
================================================================================
��ṹ����:TB_PUBCD
��ṹ����:Ա����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBCD;
drop index AK_TB_PUBCD;
drop table TB_PUBCD;
create table TB_PUBCD  (
   PUBCD_ID             INTEGER                         not null,  /*Ա��ID             */
   PUBCD001             VARCHAR2(12)                    not null,  /*Ա�����           */
   PUBCD002             VARCHAR2(12)                    not null,  /*Ա���ʺ�           */
   PUBCD003             VARCHAR2(30)                    not null,  /*Ա��������         */
   PUBCD004             VARCHAR2(30),                              /*Ա��Ӣ����         */ 20120921 modi by gaoxl for 14778:��not null��Ϊ�ɿ�
   PUBCD005             INTEGER                         not null,  /*��������ID         */
   PUBCD006             VARCHAR2(30),                              /*ְ��               */
   PUBCD007             VARCHAR2(60),                              /*E_Mail             */
   PUBCD008             VARCHAR2(30),                              /*�绰               */
   PUBCD009             VARCHAR2(30),                              /*�ֻ�               */
   PUBCD010             VARCHAR2(255),                             /*��ע               */
   PUBCD011             date��                                      /*��������           */
   PUBCD012             varchar2(1) ,                              /*�Ա�               */
   PUBCD013             varchar2(60),                              /*ͨѶ��ַ           */
   PUBCD014             integer,                                   /*�ʱ�               */
   PUBCD015             varchar2(30),                              /*����               */
   PUBCD016             varchar2(30),                              /*��ͥ�绰           */
   PUBCD017             varchar2(60),                              /*��ͥ��ַ           */
   PUBCD018             varchar2(100),                             /*������ϵ��ʽ       */
   PUBCD019             varchar2(1),                               /*��ְ״̬           */ 1.��ְ 0����ְ
   PUBCD020             varchar2(1),                               /*�û�����           */ 1:OA�û�2:ERP�û�3:����4:����
   PUBCD021             INTEGER     ,                              /*����ID             */--add by xiechun 20110421
   PUBCD022             DATE,                                      /*�ϰ��ʱ��        */ 20120417 add by gaoxl for 12345
   PUBCD023             DATE,                                      /*�°��ʱ��        */ 20120417 add by gaoxl for 12345
   PUBCD024             INTEGER,                                   /*����չλ��ID        */   20120417 add by gaoxl for 12345  
   PUBCD025             DATE,                                      /*��ְʱ��            */ 20120905 add by shizhan for 14379
   PUBCD026             varchar2(18),                              /*���֤����          */ 20120905 add by shizhan for 14379
   PUBCD027             VARCHAR2(10),                              /*������ò            */ 20120905 add by shizhan for 14379
   PUBCD028             varchar2(1),                               /*����״��            */ 20120905 add by shizhan for 14379
   PUBCD029             DATE,                                      /*ת��ʱ��            */ 20120905 add by shizhan for 14379
   PUBCD030             varchar2(30),                              /*����                */ 20120905 add by shizhan for 14379
   PUBCD031             varchar2(18),                              /*�����˺�            */ 20120905 add by shizhan for 14379
   PUBCD032             DATE,                                      /*��ְʱ��            */ 20120905 add by shizhan for 14379
   PUBCD033             varchar2(10),                              /*ָ�Ʊ��            */ 20120905 add by shizhan for 14379
   PUBCD034             varchar2(30),                              /*����                */ 20120905 add by shizhan for 14379
   PUBCD035             INTEGER,                                   /*��ְԭ��            */ 20120905 add by shizhan for 14379
   PUBCD036             varchar2(255),                             /*��������            */ 20120905 add by shizhan for 14379
   PUBCD037             varchar2(255),                             /*��Ƭ                */ 20120905 add by shizhan for 14379
   PUBCD038             varchar2(30),                              /*����                */ 20120920 add by shizhan for 14379
   PUBCD042             varchar2(1),                               /*���ͣ�1�ڲ���2���ⲿ*/ 
   PUBCD043             INTEGER,                                   /*�̳�ID              */      
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */                    
   constraint PK_TB_PUBCD primary key (PUBCD_ID)
);
create unique index AK_TB_PUBCD on TB_PUBCD (PUBCD001);
create sequence SEQ_TB_PUBCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCD to public;
grant index  on TB_PUBCD to public;
grant update on TB_PUBCD to public; 
grant delete on TB_PUBCD to public;  
grant insert on TB_PUBCD to public; 
grant select on SEQ_TB_PUBCD to public;   