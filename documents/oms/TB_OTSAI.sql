20141216 crate by sundan
================================================================================
��ṹ����:TB_OTSAI
��ṹ����:��Ӧʵ�����ݱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_OTSAI;
drop index AK_TB_OTSAI;
drop table TB_OTSAI;
create table TB_OTSAI  (
   OTSAI_ID             INTEGER                         not null,  /*��Ӧʵ������ID              */
   OTSAI001             VARCHAR2(4)                     not null,  /*��˾����                    */
   OTSAI002             VARCHAR2(8)                     not null,  /*�̳�����                    */
   OTSAI003             VARCHAR2(13),                              /*���������                  */
   OTSAI004             VARCHAR2(13)                     not null,	 /*��ͬ���                    */
   OTSAI005             VARCHAR2(2),                              /*ͳ���������                */
   OTSAI006             VARCHAR2(1),			                         /*������Դ                    */
   OTSAI007             VARCHAR2(32),			                         /*KEY                         */
   OTSAI008             VARCHAR2(5),			                         /*��Ŀ                        */
   OTSAI009             VARCHAR2(2),				                       /*ͳ��ʶ����                  */
   OTSAI010             DATE,				                               /*��������                    */
   OTSAI011             VARCHAR2(4),				                       /*���˹�˾����                */
   OTSAI012             VARCHAR2(4),				                       /*������                      */
   OTSAI013             VARCHAR2(20),				                       /*������                      */
   OTSAI014             VARCHAR2(4),				                       /*�տʽ                    */
   OTSAI015             VARCHAR2(20),				                       /*�տʽ��                  */
   OTSAI016             VARCHAR2(4),				                       /*ҵ������                    */
   OTSAI017             VARCHAR2(20),				                       /*ҵ��������                  */
   OTSAI018             VARCHAR2(30),				                       /*OMS����                     */
   OTSAI019             VARCHAR2(50),				                       /*������                      */
   OTSAI020             NUMBER(22,2),				                       /*���                        */
   OTSAI021             DATE,					                             /*��������                    */
   OTSAI022             VARCHAR2(10),			                         /*ƾ֤���                    */
   OTSAI023             VARCHAR2(20),                              /*����޸���                  */
   OTSAI024             DATE,                                      /*����޸�����                */
   OTSAI025             VARCHAR2(8),                               /*����޸�ʱ��                */
   OTSAI026             VARCHAR2(1),                               /*��Ϣ����                    */
   OTSAI027             VARCHAR2(60),                              /*��Ϣ�ı�                    */
   OTSAI028             DATE,                                      /*OMS��������                 */
   OTSAI029             VARCHAR2(8),                               /*OMS����ʱ��                 */
   RESERVED1            VARCHAR2(60),                              /*�����ֶ�1                   */
   RESERVED2            VARCHAR2(60),                              /*�����ֶ�2                   */
   RESERVED3            VARCHAR2(60),                              /*�����ֶ�3                   */
   RESERVED4            VARCHAR2(60),                              /*�����ֶ�4                   */
   RESERVED5            VARCHAR2(60),                              /*�����ֶ�5                   */
   RESERVED6            VARCHAR2(60),                              /*�����ֶ�6                   */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա                    */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                */                               
   CREATE_DATE          DATE,                                      /*��������                    */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                    */
   MODI_DATE            DATE,                                      /*�޸�����                    */
   FLAG                 NUMBER(1),                                 /*����״̬                    */
   operatebatchno       VARCHAR2(100),                             /*״̬*/
   constraint PK_TB_OTSAI primary key (OTSAI_ID)
);
--create unique index AK_TB_OTSAI on TB_OTSAI (OTSAI_ID);
create sequence SEQ_TB_OTSAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAI to public;
grant index  on TB_OTSAI to public;
grant update on TB_OTSAI to public; 
grant delete on TB_OTSAI to public;  
grant insert on TB_OTSAI to public; 
grant select on SEQ_TB_OTSAI to public;   