/*
================================================================================
��ṹ����:TB_PUBHX
��ṹ����:�׼���Ʒά����Ϣ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHX;
drop index AK_TB_PUBHX;
drop table TB_PUBHX;
create table TB_PUBHX  (
   PUBHX_ID             INTEGER                         not null,  /*�׼�ά����ϢID       */
   PUBHX001             INTEGER                         not null,  /*�׼���ƷID           */
   PUBHX002             INTEGER                         	,  /*�׼�ά��1ID         */
   PUBHX003             INTEGER                         	,  /*�׼�ά��2ID         */
   PUBHX004             INTEGER                         	,  /*�׼�ά��3ID        */
   PUBHX005             INTEGER,                                   /*�׼�ά��4ID	*/
   PUBHX006             VARCHAR2(60),                              /*�׼�ά��5ID	*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */     
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_PUBHX primary key (PUBHX_ID)
);
create unique index AK_TB_PUBHX on TB_PUBHX(PUBHX001,PUBHX002,PUBHX003,PUBHX004,PUBHX005,PUBHX006);
create sequence SEQ_TB_PUBHX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHX  to public;
grant index  on TB_PUBHX  to public;
grant update on TB_PUBHX  to public; 
grant delete on TB_PUBHX  to public;  
grant insert on TB_PUBHX  to public; 
grant select on SEQ_TB_PUBHX to public;   