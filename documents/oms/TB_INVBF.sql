/*
================================================================================
��ṹ����:TB_INVBF
��ṹ����:�����������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVBF;
drop index AK_TB_INVBF;
drop table TB_INVBF;
create table TB_INVBF  (                                       
   INVBF_ID         INTEGER                not null,             /*������ϸID       */
   INVBF001         INTEGER                not null,             /*����������ID     */
   INVBF002         INTEGER,                                     /*����������ID     */
   INVBF003         INTEGER,                                     /*������������ϸID */
   INVBF004         VARCHAR2(1)            not null,             /*��Ʒ��������     */   
   INVBF005         VARCHAR2(1),                                 /*��������         */ 
   INVBF006         INTEGER                not null,             /*��Ʒ����         */
   INVBF007         INTEGER,                                     /*ά��1            */
   INVBF008         INTEGER,                                     /*ά��2            */
   INVBF009         INTEGER,                                     /*ά��3            */
   INVBF010         INTEGER,                                     /*ά��4            */
   INVBF011         INTEGER,                                     /*ά��5            */
   INVBF012         INTEGER                not null,             /*��λ             */
   INVBF013         NUMBER(18,3)           not null,             /*��λ������       */
   INVBF014         NUMBER(18,3)           not null,             /*������           */    
   INVBF015         NUMBER(18,3)           not null,             /*�ջ���           */
   INVBF016         NUMBER(18,3)           not null,             /*������           */
   INVBF017         NUMBER(12,2),                                /*˰ǰ����         */
   INVBF018         NUMBER(12,2),                                /*˰ǰ���         */
   INVBF019         NUMBER(12,2)           not null,             /*��˰����         */
   INVBF020         NUMBER(12,2)           not null,             /*��˰���         */
   INVBF021         INTEGER                not null,             /*˰��             */
   INVBF022         NUMBER(18,3)           not null,             /*˰��             */
   INVBF023         INTEGER                not null,             /*��Ӫ��ʽ         */
   INVBF024         integer                not null,             /*��Ӧ��           */
   INVBF025         VARCHAR2(255),                               /*��ע             */
   INVBF026         VARCHAR2(1),                                 /*�Ƿ���װƷ       */
   INVBF027         VARCHAR2(1),                                 /*�Ƿ�ɷ�         */
   INVBF028         integer                        ,             /*����ƷID         */
   INVBF029         integer                        ,             /*����             */
   INVBF030         VARCHAR2(30),                                /*���׼���ϵ��Ӧ�漴��          */
   INVBF031         NUMBER(18,3)                   ,             /*���÷�̯ add by hansf 20110114*/
   INVBF032	    varchar2(64),                                /*�������          */--20110801 add by xiechun
   INVBF033
   INVBF034         VARCHAR2(255),                                     /*��ע1            */
   INVBF035         VARCHAR2(255),                                     /*��ע2            */
   INVBF036         VARCHAR2(255),                                     /*��ע3            */
   CREATE_USER      VARCHAR2(12),                                /*������Ա         */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����     */             
   CREATE_DATE      DATE,                                        /*��������         */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_INVBF primary key (INVBF_ID)                               
);                                                     
create sequence SEQ_TB_INVBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBF to public;                                     
grant index  on TB_INVBF to public;                                     
grant update on TB_INVBF to public;                                      
grant delete on TB_INVBF to public;                                       
grant insert on TB_INVBF to public;                                      
grant select on SEQ_TB_INVBF to public;                                        